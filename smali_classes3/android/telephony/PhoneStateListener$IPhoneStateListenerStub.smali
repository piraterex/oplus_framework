.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/telephony/PhoneStateListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1335
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 1336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 1337
    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1338
    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$56(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "subId"    # I

    .line 1608
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$62(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1636
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallAttributesChanged$54(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;

    .line 1600
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$24(Landroid/telephony/PhoneStateListener;II)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1466
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$6(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cfi"    # Z

    .line 1369
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$42(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "active"    # Z

    .line 1546
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$20(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 1450
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$8(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 1393
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$34(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "activationState"    # I

    .line 1512
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$16(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "direction"    # I

    .line 1434
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$28(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1486
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "networkType"    # I

    .line 1416
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1418
    invoke-virtual {p0, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 1419
    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$14(Landroid/telephony/PhoneStateListener;II)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1423
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1424
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 1425
    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$38(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1530
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$44(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1555
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$58(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1617
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLegacyCallStateChanged$10(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1401
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$4(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "mwi"    # Z

    .line 1361
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onOemHookRawEvent$40(Landroid/telephony/PhoneStateListener;[B)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "rawData"    # [B

    .line 1538
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$46(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1565
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$48(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1576
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$50(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1584
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$22(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1458
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$26(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1477
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$52(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I

    .line 1592
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1626
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/PhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1345
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthChanged$2(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "asu"    # I

    .line 1353
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$18(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1442
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$30(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "state"    # I

    .line 1494
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$36(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "enabled"    # Z

    .line 1521
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$32(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p1, "activationState"    # I

    .line 1503
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActiveDataSubIdChanged$57$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1608
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onBarringInfoChanged$63$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "barringInfo"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallAttributesChanged$55$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "callAttributes"    # Landroid/telephony/CallAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallDisconnectCauseChanged$25$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "disconnectCause"    # I
    .param p3, "preciseDisconnectCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1466
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCallForwardingIndicatorChanged$7$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "cfi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCarrierNetworkChange$43$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCellInfoChanged$21$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "cellInfo"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onCellLocationChanged$9$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "location"    # Landroid/telephony/CellLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataActivationStateChanged$35$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1511
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataActivity$17$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$29$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataConnectionStateChanged$13$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataConnectionStateChanged$15$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .param p3, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onDisplayInfoChanged$39$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onEmergencyNumberListChanged$45$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "emergencyNumberList"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onImsCallDisconnectCauseChanged$59$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onLegacyCallStateChanged$11$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onMessageWaitingIndicatorChanged$5$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "mwi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onOemHookRawEvent$41$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;[B)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/PhoneStateListener;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onOutgoingEmergencyCall$47$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onOutgoingEmergencySms$49$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p3, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPhoneCapabilityChanged$51$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "capability"    # Landroid/telephony/PhoneCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPreciseCallStateChanged$23$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPreciseDataConnectionStateChanged$27$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onRadioPowerStateChanged$53$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onRegistrationFailed$61$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 9
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
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

    .line 1626
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onServiceStateChanged$1$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onSignalStrengthChanged$3$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "asu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onSignalStrengthsChanged$19$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onSrvccStateChanged$31$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onUserMobileDataStateChanged$37$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onVoiceActivationStateChanged$33$android-telephony-PhoneStateListener$IPhoneStateListenerStub(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "psl"    # Landroid/telephony/PhoneStateListener;
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onActiveDataSubIdChanged(I)V
    .locals 2
    .param p1, "subId"    # I

    .line 1604
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1605
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1607
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1609
    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "allowedNetworkType"    # J

    .line 1649
    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 2
    .param p1, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 1632
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1633
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1635
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1637
    return-void
.end method

.method public blacklist onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .locals 2
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;

    .line 1596
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1597
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1599
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1601
    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .locals 2
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1462
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1463
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1465
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1468
    return-void
.end method

.method public greylist-max-o onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .line 1365
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1366
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1368
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1370
    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1406
    return-void
.end method

.method public greylist-max-o onCarrierNetworkChange(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 1542
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1543
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1545
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1547
    return-void
.end method

.method public greylist-max-o onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1446
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1447
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1449
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1451
    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .locals 5
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1377
    const-class v0, Lcom/oplus/permission/IOplusPermissionCheckInjectorExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjectorExt;

    .line 1378
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1378
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string/jumbo v4, "onCellLocationChanged"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjectorExt;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    return-void

    .line 1388
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1389
    .local v0, "location":Landroid/telephony/CellLocation;
    :goto_0
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    .line 1390
    .local v1, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v1, :cond_2

    return-void

    .line 1392
    :cond_2
    new-instance v2, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1394
    return-void
.end method

.method public greylist-max-o onDataActivationStateChanged(I)V
    .locals 2
    .param p1, "activationState"    # I

    .line 1507
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1508
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1510
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1513
    return-void
.end method

.method public greylist-max-o onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 1430
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1431
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1433
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1435
    return-void
.end method

.method public greylist-max-o onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1481
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1482
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1484
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1487
    return-void
.end method

.method public greylist-max-o onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1409
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1410
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1413
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 1414
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    .line 1421
    :cond_1
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1427
    :goto_0
    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 1645
    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1525
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1526
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1528
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1531
    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .locals 2
    .param p1, "emergencyNumberList"    # Ljava/util/Map;

    .line 1550
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1551
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1553
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1556
    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "disconnectCause"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1612
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1613
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1615
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1618
    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1397
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1398
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1400
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1402
    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 1654
    .local p1, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    return-void
.end method

.method public greylist-max-o onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "mwi"    # Z

    .line 1357
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1358
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1360
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1362
    return-void
.end method

.method public greylist-max-o onOemHookRawEvent([B)V
    .locals 2
    .param p1, "rawData"    # [B

    .line 1534
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1535
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1537
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1539
    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "placedEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1560
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1561
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1567
    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .param p1, "sentEmergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "subscriptionId"    # I

    .line 1571
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1572
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1574
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1577
    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 2
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 1580
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1581
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1583
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1585
    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1641
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    return-void
.end method

.method public greylist-max-o onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 1454
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1455
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1459
    return-void
.end method

.method public greylist-max-o onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1472
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1473
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1475
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1478
    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1588
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1589
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1591
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1593
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 10
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p2, "chosenPlmn"    # Ljava/lang/String;
    .param p3, "domain"    # I
    .param p4, "causeCode"    # I
    .param p5, "additionalCauseCode"    # I

    .line 1622
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1623
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1625
    :cond_0
    new-instance v9, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1629
    return-void
.end method

.method public greylist-max-o onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1341
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1342
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1344
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1346
    return-void
.end method

.method public greylist-max-o onSignalStrengthChanged(I)V
    .locals 2
    .param p1, "asu"    # I

    .line 1349
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1350
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1352
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1354
    return-void
.end method

.method public greylist-max-o onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1438
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1439
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1441
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1443
    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1490
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1491
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1493
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1495
    return-void
.end method

.method public greylist-max-o onUserMobileDataStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1516
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1517
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1519
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1522
    return-void
.end method

.method public greylist-max-o onVoiceActivationStateChanged(I)V
    .locals 2
    .param p1, "activationState"    # I

    .line 1498
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 1499
    .local v0, "psl":Landroid/telephony/PhoneStateListener;
    if-nez v0, :cond_0

    return-void

    .line 1501
    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1504
    return-void
.end method
