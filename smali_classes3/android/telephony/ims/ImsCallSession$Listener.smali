.class public Landroid/telephony/ims/ImsCallSession$Listener;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 0
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 513
    return-void
.end method

.method public blacklist callSessionBusy(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 597
    return-void
.end method

.method public blacklist callSessionCalling(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 606
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 299
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 309
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 289
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 361
    return-void
.end method

.method public blacklist callSessionDeviceSwitchFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 542
    return-void
.end method

.method public blacklist callSessionDeviceSwitched(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 531
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .locals 0
    .param p1, "digit"    # C

    .line 506
    return-void
.end method

.method public greylist-max-o callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 404
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 418
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 172
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 182
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 191
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 113
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 123
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 319
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 330
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I

    .line 390
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 239
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 249
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 231
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 441
    return-void
.end method

.method public blacklist callSessionNotificationRingtoneReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "causeNum"    # I
    .param p3, "causeText"    # Ljava/lang/String;

    .line 630
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 133
    return-void
.end method

.method public blacklist callSessionRedialEcc(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isNeedUserConfirm"    # Z

    .line 578
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 340
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 351
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 210
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 219
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 200
    return-void
.end method

.method public blacklist callSessionRinging(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 588
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 521
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 479
    return-void
.end method

.method public blacklist callSessionRttEventReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "event"    # I

    .line 565
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 472
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 458
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .locals 0
    .param p1, "status"    # I

    .line 465
    return-void
.end method

.method public greylist-max-o callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 153
    return-void
.end method

.method public greylist-max-o callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 143
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 450
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 163
    return-void
.end method

.method public blacklist callSessionTextCapabilityChanged(Landroid/telephony/ims/ImsCallSession;IIII)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 555
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 494
    return-void
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 486
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 429
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 268
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 278
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 258
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 372
    return-void
.end method

.method public blacklist callSessionVideoRingtoneEventReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 618
    return-void
.end method
