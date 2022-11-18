.class Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "TelephonyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 1455
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1456
    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1457
    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$50(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .param p1, "subId"    # I

    .line 1721
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onAllowedNetworkTypesChanged$62(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 1783
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;->onAllowedNetworkTypesChanged(IJ)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$56(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$BarringInfoListener;
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1752
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$BarringInfoListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallAttributesChanged$48(Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallAttributesListener;
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;

    .line 1711
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$22(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1573
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$4(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    .param p1, "cfi"    # Z

    .line 1486
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStateChanged$8(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CallStateListener;
    .param p1, "state"    # I

    .line 1511
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallStateListener;->onCallStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$36(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    .param p1, "active"    # Z

    .line 1650
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$18(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CellInfoListener;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 1555
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellInfoListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$6(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$CellLocationListener;
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 1498
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellLocationListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$30(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    .param p1, "activationState"    # I

    .line 1618
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivationStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$14(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataActivityListener;
    .param p1, "direction"    # I

    .line 1537
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivityListener;->onDataActivity(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$10(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .locals 1
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p1, "networkType"    # I

    .line 1523
    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1528
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataEnabledChanged$60(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DataEnabledListener;
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 1772
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataEnabledListener;->onDataEnabledChanged(ZI)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$34(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1637
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DisplayInfoListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$38(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1660
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$52(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1732
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkCapacityEstimateChanged$64(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    .param p1, "linkCapacityEstimateList"    # Ljava/util/List;

    .line 1794
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$2(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    .param p1, "mwi"    # Z

    .line 1477
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$40(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1671
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$42(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1683
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$44(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1693
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhysicalChannelConfigChanged$58(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    .param p1, "configs"    # Ljava/util/List;

    .line 1761
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$20(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1564
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$24(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1585
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$46(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    .param p1, "state"    # I

    .line 1702
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$54(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1742
    invoke-interface/range {p0 .. p5}, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$ServiceStateListener;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1464
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ServiceStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$16(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1546
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$26(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$SrvccStateListener;
    .param p1, "state"    # I

    .line 1598
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SrvccStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$32(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    .param p1, "enabled"    # Z

    .line 1628
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$28(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    .param p1, "activationState"    # I

    .line 1608
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActiveDataSubIdChanged$51$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1721
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onAllowedNetworkTypesChanged$63$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    .param p2, "reason"    # I
    .param p3, "allowedNetworkType"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onBarringInfoChanged$57$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$BarringInfoListener;
    .param p2, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1752
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallAttributesChanged$49$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallAttributesListener;
    .param p2, "callAttributes"    # Landroid/telephony/CallAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallDisconnectCauseChanged$23$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    .param p2, "disconnectCause"    # I
    .param p3, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallForwardingIndicatorChanged$5$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallStateChanged$9$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CallStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1511
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCarrierNetworkChange$37$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCellInfoChanged$19$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CellInfoListener;
    .param p2, "cellInfo"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCellLocationChanged$7$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$CellLocationListener;
    .param p2, "location"    # Landroid/telephony/CellLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataActivationStateChanged$31$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataActivity$15$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataActivityListener;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataConnectionStateChanged$11$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1522
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataConnectionStateChanged$13$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    .param p2, "state"    # I
    .param p3, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataEnabledChanged$61$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DataEnabledListener;
    .param p2, "enabled"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1772
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDisplayInfoChanged$35$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    .param p2, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onEmergencyNumberListChanged$39$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    .param p2, "emergencyNumberList"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1659
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onImsCallDisconnectCauseChanged$53$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    .param p2, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onLinkCapacityEstimateChanged$65$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    .param p2, "linkCapacityEstimateList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1794
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onMessageWaitingIndicatorChanged$3$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    .param p2, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onOutgoingEmergencyCall$41$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    .param p2, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onOutgoingEmergencySms$43$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    .param p2, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPhoneCapabilityChanged$45$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    .param p2, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPhysicalChannelConfigChanged$59$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    .param p2, "configs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPreciseCallStateChanged$21$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPreciseDataConnectionStateChanged$25$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    .param p2, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onRadioPowerStateChanged$47$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onRegistrationFailed$55$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 9
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p3, "chosenPlmn"    # Ljava/lang/String;
    .param p4, "domain"    # I
    .param p5, "causeCode"    # I
    .param p6, "additionalCauseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1742
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onServiceStateChanged$1$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$ServiceStateListener;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onSignalStrengthsChanged$17$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onSrvccStateChanged$27$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$SrvccStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onUserMobileDataStateChanged$33$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onVoiceActivationStateChanged$29$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onActiveDataSubIdChanged(I)V
    .locals 2
    .param p1, "subId"    # I

    .line 1716
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1717
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    .line 1718
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    if-nez v0, :cond_0

    return-void

    .line 1720
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1723
    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .locals 8
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 1777
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1778
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    .line 1779
    .local v0, "listener":Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;
    if-nez v0, :cond_0

    return-void

    .line 1781
    :cond_0
    new-instance v7, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1785
    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 2
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1748
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$BarringInfoListener;

    .line 1749
    .local v0, "listener":Landroid/telephony/TelephonyCallback$BarringInfoListener;
    if-nez v0, :cond_0

    return-void

    .line 1751
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1753
    return-void
.end method

.method public blacklist onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .locals 2
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;

    .line 1706
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1707
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallAttributesListener;

    .line 1708
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallAttributesListener;
    if-nez v0, :cond_0

    return-void

    .line 1710
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallAttributesListener;Landroid/telephony/CallAttributes;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1713
    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .locals 2
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1568
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1569
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;

    .line 1570
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;
    if-nez v0, :cond_0

    return-void

    .line 1572
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1575
    return-void
.end method

.method public blacklist onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .line 1481
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1482
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    .line 1483
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;
    if-nez v0, :cond_0

    return-void

    .line 1485
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1487
    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1507
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallStateListener;

    .line 1508
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CallStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1510
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1512
    return-void
.end method

.method public blacklist onCarrierNetworkChange(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 1645
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1646
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;

    .line 1647
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
    if-nez v0, :cond_0

    return-void

    .line 1649
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1651
    return-void
.end method

.method public blacklist onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1551
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellInfoListener;

    .line 1552
    .local v0, "listener":Landroid/telephony/TelephonyCallback$CellInfoListener;
    if-nez v0, :cond_0

    return-void

    .line 1554
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1556
    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .locals 3
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1493
    if-nez p1, :cond_0

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1494
    .local v0, "location":Landroid/telephony/CellLocation;
    :goto_0
    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback$CellLocationListener;

    .line 1495
    .local v1, "listener":Landroid/telephony/TelephonyCallback$CellLocationListener;
    if-nez v1, :cond_1

    return-void

    .line 1497
    :cond_1
    new-instance v2, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1499
    return-void
.end method

.method public blacklist onDataActivationStateChanged(I)V
    .locals 2
    .param p1, "activationState"    # I

    .line 1612
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1613
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivationStateListener;

    .line 1614
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataActivationStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1616
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1619
    return-void
.end method

.method public blacklist onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 1533
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivityListener;

    .line 1534
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataActivityListener;
    if-nez v0, :cond_0

    return-void

    .line 1536
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1538
    return-void
.end method

.method public blacklist onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1591
    return-void
.end method

.method public blacklist onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1515
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1516
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;

    .line 1517
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1519
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1520
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 1521
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    .line 1526
    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1530
    :goto_0
    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 1767
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1768
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataEnabledListener;

    .line 1769
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DataEnabledListener;
    if-nez v0, :cond_0

    return-void

    .line 1771
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1774
    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1632
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    .line 1633
    .local v0, "listener":Landroid/telephony/TelephonyCallback$DisplayInfoListener;
    if-nez v0, :cond_0

    return-void

    .line 1635
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1638
    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .locals 2
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1654
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1655
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;

    .line 1656
    .local v0, "listener":Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;
    if-nez v0, :cond_0

    return-void

    .line 1658
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1661
    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1726
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1727
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    .line 1728
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;
    if-nez v0, :cond_0

    return-void

    .line 1730
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1733
    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1504
    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 1789
    .local p1, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1790
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;

    .line 1791
    .local v0, "listener":Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;
    if-nez v0, :cond_0

    return-void

    .line 1793
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1796
    return-void
.end method

.method public blacklist onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "mwi"    # Z

    .line 1472
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1473
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;

    .line 1474
    .local v0, "listener":Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;
    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1478
    return-void
.end method

.method public blacklist onOemHookRawEvent([B)V
    .locals 0
    .param p1, "rawData"    # [B

    .line 1642
    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1665
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1666
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;

    .line 1667
    .local v0, "listener":Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
    if-nez v0, :cond_0

    return-void

    .line 1669
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1673
    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1677
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1678
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    .line 1679
    .local v0, "listener":Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;
    if-nez v0, :cond_0

    return-void

    .line 1681
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1685
    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 2
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1688
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1689
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    .line 1690
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;
    if-nez v0, :cond_0

    return-void

    .line 1692
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1694
    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1756
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1757
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    .line 1758
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
    if-nez v0, :cond_0

    return-void

    .line 1760
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1763
    return-void
.end method

.method public blacklist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1559
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1560
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    .line 1561
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PreciseCallStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1565
    return-void
.end method

.method public blacklist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1579
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1580
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    .line 1581
    .local v0, "listener":Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1583
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1587
    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1697
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1698
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;

    .line 1699
    .local v0, "listener":Landroid/telephony/TelephonyCallback$RadioPowerStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1701
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1703
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 10
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1737
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1738
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;

    .line 1739
    .local v0, "listener":Landroid/telephony/TelephonyCallback$RegistrationFailedListener;
    if-nez v0, :cond_0

    return-void

    .line 1741
    :cond_0
    new-instance v9, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1745
    return-void
.end method

.method public blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1460
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    .line 1461
    .local v0, "listener":Landroid/telephony/TelephonyCallback$ServiceStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1463
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1465
    return-void
.end method

.method public blacklist onSignalStrengthChanged(I)V
    .locals 0
    .param p1, "asu"    # I

    .line 1469
    return-void
.end method

.method public blacklist onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1541
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1542
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    .line 1543
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
    if-nez v0, :cond_0

    return-void

    .line 1545
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1548
    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1594
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SrvccStateListener;

    .line 1595
    .local v0, "listener":Landroid/telephony/TelephonyCallback$SrvccStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1597
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1599
    return-void
.end method

.method public blacklist onUserMobileDataStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1622
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1623
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    .line 1624
    .local v0, "listener":Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1626
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1629
    return-void
.end method

.method public blacklist onVoiceActivationStateChanged(I)V
    .locals 2
    .param p1, "activationState"    # I

    .line 1602
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 1603
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;

    .line 1604
    .local v0, "listener":Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1606
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1609
    return-void
.end method
