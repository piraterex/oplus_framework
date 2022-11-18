.class public Lcom/android/internal/telephony/ITelephony$Default;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2554
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2736
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "nafUrl"    # Landroid/net/Uri;
    .param p4, "securityProtocol"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .param p5, "forceBootStrapping"    # Z
    .param p6, "callback"    # Landroid/telephony/IBootstrapAuthenticationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2417
    return-void
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist carrierActionReportDefaultNetworkStatus(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1676
    return-void
.end method

.method public blacklist carrierActionResetAll(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1685
    return-void
.end method

.method public blacklist carrierActionSetRadioEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1665
    return-void
.end method

.method public blacklist changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkCarrierPrivilegesForPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearCarrierImsServiceOverride(I)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    return-void
.end method

.method public blacklist clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2572
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dial(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist disableDataConnectivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableIms(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    return-void
.end method

.method public blacklist disableLocationUpdates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    return-void
.end method

.method public blacklist doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDataConnectivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableIms(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    return-void
.end method

.method public blacklist enableLocationUpdates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist enableModemForSlot(IZ)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableVideoCalling(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1228
    return-void
.end method

.method public blacklist enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    return-void
.end method

.method public blacklist enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subIdResult"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    return-void
.end method

.method public blacklist factoryReset(ILjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    return-void
.end method

.method public blacklist getActivePhoneType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivePhoneTypeForSlot(I)I
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAidForAppType(II)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1510
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1573
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedNetworkTypesBitmask(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedNetworkTypesForReason(II)J
    .locals 2
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getBoundGbaService(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2426
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBoundImsServicePackage(IZI)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "isCarrierImsService"    # Z
    .param p3, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCallComposerStatus(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callForwardingReason"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    return-void
.end method

.method public blacklist getCallState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    return-void
.end method

.method public blacklist getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2536
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCardIdForDefaultEuicc(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierIdFromMccMnc(ILjava/lang/String;Z)I
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "isSubscriptionMccMnc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierIdListVersion(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierPrivilegeStatus(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierPrivilegeStatusForUid(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1044
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "logicalSlotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2715
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierSingleRegistrationEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2503
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaMdn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaMin(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaPrlVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1535
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCdmaRoamingMode(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCdmaSubscriptionMode(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2099
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactFromEab(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2531
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2239
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDataActivationState(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataActivity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataActivityForSubId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataStateForSubId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceSingleRegistrationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1384
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceUceEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyCallbackMode(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyNumberDbVersion(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2089
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2352
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEsn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGbaReleaseTime(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsFeatureValidationOverride(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2513
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    return-void
.end method

.method public blacklist getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    return-void
.end method

.method public blacklist getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1978
    return-void
.end method

.method public blacklist getImsProvisioningInt(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsProvisioningStatusForCapability(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsProvisioningString(II)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2143
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsRegTechnologyForMmTel(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastUcePidfXmlShell(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2589
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2580
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getManualNetworkSelectionPlmn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getManufacturerCodeForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMmsUAProfUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMmsUserAgent(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2283
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2521
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkSelectionMode(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackagesWithCarrierPrivileges(I)Ljava/util/List;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1499
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1394
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2621
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRadioAccessFamily(ILjava/lang/String;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRadioHalVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1960
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRcsProvisioningStatusForCapability(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRcsSingleRegistrationTestModeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2469
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSignalStrength(I)Landroid/telephony/SignalStrength;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1778
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSimLocaleForSubscriber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSlicingConfig(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2645
    return-void
.end method

.method public blacklist getSlotsMapping(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2229
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionCarrierId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1588
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionCarrierName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriptionSpecificCarrierId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubscriptionSpecificCarrierName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1640
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSelectionChannels(I)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2267
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTelephonyHistograms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1546
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTypeAllocationCodeForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoWiFiModeSetting(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoWiFiRoamingModeSetting(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceActivationState(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "ussdRequest"    # Ljava/lang/String;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist hasIccCard()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIccCardUsingSlotIndex(I)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z
    .locals 1
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 1
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist invokeOemRilRequestRaw([B[B)I
    .locals 1
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAdvancedCallingSettingEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApnMetered(II)Z
    .locals 1
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2260
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApplicationOnUicc(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2248
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAvailable(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCapable(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1990
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConcurrentVoiceAndDataAllowed(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossSimCallingEnabledByUser(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2031
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataConnectivityPossible(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 962
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabledForApn(IILjava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataEnabledForReason(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDataRoamingEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHearingAidCompatibilitySupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIccLockEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImsRegistered(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInEmergencySmsMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1955
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManualNetworkSelectionAllowed(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p3, "capability"    # I
    .param p4, "transportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    return-void
.end method

.method public blacklist isMobileDataPolicyEnabled(II)Z
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMvnoMatched(IILjava/lang/String;)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "mvnoType"    # I
    .param p3, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2271
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNrDualConnectivityEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProvisioningRequiredForCapability(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRcsProvisioningRequiredForCapability(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2695
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRcsVolteSingleRegistrationCapable(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2448
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2732
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRttSupported(I)Z
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTetheringApnRequiredForSubscriber(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTtyModeSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTtyOverVolteEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2084
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsingNewDataStack()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoTelephonyAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1304
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNrEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoWiFiRoamingSettingEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2040
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoWiFiSettingEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2022
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVtSettingEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2013
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiCallingAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needMobileRadioShutdown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needsOtaServiceProvisioning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyOtaEmergencyNumberDbInstalled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2176
    return-void
.end method

.method public blacklist notifyRcsAutoConfigurationReceived(I[BZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "config"    # [B
    .param p3, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2304
    return-void
.end method

.method public blacklist nvReadItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist nvWriteCdmaPrl([B)Z
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;)Z
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prepareForUnattendedReboot()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rebootModem(I)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshUiccProfile(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    return-void
.end method

.method public blacklist registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2112
    return-void
.end method

.method public blacklist registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2104
    return-void
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    return-void
.end method

.method public blacklist registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "feature"    # I
    .param p3, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2649
    return-void
.end method

.method public blacklist registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1982
    return-void
.end method

.method public blacklist registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    return-void
.end method

.method public blacklist registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    return-void
.end method

.method public blacklist removeContactFromEab(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "contacts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2526
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2563
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeUceRequestDisallowedStatus(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2597
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    return-void
.end method

.method public blacklist requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    return-void
.end method

.method public blacklist requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    return-void
.end method

.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "binder"    # Landroid/os/IBinder;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Landroid/telephony/PhoneNumberRange;
    .param p2, "timeoutMillis"    # J
    .param p4, "callback"    # Lcom/android/internal/telephony/INumberVerificationCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    return-void
.end method

.method public blacklist requestUserActivityNotification()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2320
    return-void
.end method

.method public blacklist resetIms(I)V
    .locals 0
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    return-void
.end method

.method public blacklist resetModemConfig(I)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    return-void
.end method

.method public blacklist sendDeviceToDeviceMessage(II)V
    .locals 0
    .param p1, "message"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2488
    return-void
.end method

.method public blacklist sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "inputCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "thermalMitigationRequest"    # Landroid/telephony/ThermalMitigationRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2412
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    return-void
.end method

.method public blacklist setActiveDeviceToDeviceTransport(Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2492
    return-void
.end method

.method public blacklist setAdvancedCallingSettingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I
    .locals 1
    .param p1, "carrierRestrictionRules"    # Landroid/telephony/CarrierRestrictionRules;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAllowedNetworkTypesForReason(IIJ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "allowedNetworkTypes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBoundGbaServiceOverride(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2421
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBoundImsServiceOverride(IZ[ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "isCarrierService"    # Z
    .param p3, "featureTypes"    # [I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallComposerStatus(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callForwardingInfo"    # Landroid/telephony/CallForwardingInfo;
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    return-void
.end method

.method public blacklist setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    return-void
.end method

.method public blacklist setCapabilitiesRequestTimeout(IJ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "timeoutAfterMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2605
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2483
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "iccid"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "plmn"    # Ljava/lang/String;
    .param p8, "spn"    # Ljava/lang/String;
    .param p9, "carrierPrivilegeRules"    # Ljava/lang/String;
    .param p10, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1926
    return-void
.end method

.method public blacklist setCdmaRoamingMode(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1895
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCdmaSubscriptionMode(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1917
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCellInfoListRate(I)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    return-void
.end method

.method public blacklist setCepEnabled(Z)V
    .locals 0
    .param p1, "isCepEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2300
    return-void
.end method

.method public blacklist setCrossSimCallingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    return-void
.end method

.method public blacklist setDataActivationState(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    return-void
.end method

.method public blacklist setDataEnabledForReason(IIZLjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "enable"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    return-void
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    return-void
.end method

.method public blacklist setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2474
    return-void
.end method

.method public blacklist setDeviceToDeviceForceEnabled(Z)V
    .locals 0
    .param p1, "isForceEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2499
    return-void
.end method

.method public blacklist setDeviceUceEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    return-void
.end method

.method public blacklist setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1755
    .local p3, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGbaReleaseTimeOverride(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setIccLockEnabled(IZLjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2311
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsFeatureValidationOverride(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsProvisioningInt(III)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsProvisioningStatusForCapability(IIIZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    return-void
.end method

.method public blacklist setImsProvisioningString(IILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setImsRegistrationState(Z)V
    .locals 0
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    return-void
.end method

.method public blacklist setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMobileDataPolicyEnabled(IIZ)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2292
    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiSimCarrierRestriction(Z)V
    .locals 0
    .param p1, "isMultiSimCarrierRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2196
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "operatorInfo"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persisSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setNrDualConnectivityState(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "nrDualConnectivityState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2381
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadioForSubscriber(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRadioPower(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2441
    return-void
.end method

.method public blacklist setRcsProvisioningStatusForCapability(IIIZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    return-void
.end method

.method public blacklist setRcsSingleRegistrationTestModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2465
    return-void
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isDefault"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2724
    return-void
.end method

.method public blacklist setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRttCapabilitySetting(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    return-void
.end method

.method public blacklist setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2613
    return-void
.end method

.method public blacklist setSimPowerStateForSlot(II)V
    .locals 0
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    return-void
.end method

.method public blacklist setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1728
    return-void
.end method

.method public blacklist setSimSlotMapping(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1854
    .local p1, "slotMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    .locals 0
    .param p2, "subId"    # I
    .param p3, "resultCallback"    # Lcom/android/internal/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;I",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2264
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    return-void
.end method

.method public blacklist setVoNrEnabled(IZ)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2362
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoWiFiModeSetting(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2061
    return-void
.end method

.method public blacklist setVoWiFiNonPersistent(IZI)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isCapable"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    return-void
.end method

.method public blacklist setVoWiFiRoamingModeSetting(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2076
    return-void
.end method

.method public blacklist setVoWiFiRoamingSettingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2048
    return-void
.end method

.method public blacklist setVoWiFiSettingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    return-void
.end method

.method public blacklist setVoiceActivationState(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public blacklist setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceServiceStateOverride(IZLjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "hasService"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2703
    return-void
.end method

.method public blacklist setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1459
    return-void
.end method

.method public blacklist setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    return-void
.end method

.method public blacklist setVtSettingEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2018
    return-void
.end method

.method public blacklist shutdownMobileRadios()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    return-void
.end method

.method public blacklist startEmergencyCallbackMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2158
    return-void
.end method

.method public blacklist stopNetworkScan(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "scanId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    return-void
.end method

.method public blacklist supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist switchMultiSimConfig(I)V
    .locals 0
    .param p1, "numOfSims"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2217
    return-void
.end method

.method public blacklist switchSlots([I)Z
    .locals 1
    .param p1, "physicalSlots"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleRadioOnOff()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public blacklist toggleRadioOnOffForSubscriber(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist triggerRcsReconfiguration(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2461
    return-void
.end method

.method public blacklist unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2116
    return-void
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    return-void
.end method

.method public blacklist unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    return-void
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1970
    return-void
.end method

.method public blacklist unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2653
    return-void
.end method

.method public blacklist unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    return-void
.end method

.method public blacklist unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    return-void
.end method

.method public blacklist updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "otaParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2180
    return-void
.end method

.method public blacklist updateServiceLocation()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist updateServiceLocationWithPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    return-void
.end method

.method public blacklist userActivity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2327
    return-void
.end method
