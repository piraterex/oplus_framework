.class public Landroid/telephony/ims/ImsCallSessionListener;
.super Ljava/lang/Object;
.source "ImsCallSessionListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 1
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callQualityChanged(Landroid/telephony/CallQuality;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 730
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionConferenceExtendReceived(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 409
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 425
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionConferenceExtended(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    :goto_0
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionDtmfReceived(C)V
    .locals 2
    .param p1, "dtmf"    # C

    .line 745
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_4

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x44

    if-le p1, v0, :cond_4

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x64

    if-le p1, v0, :cond_4

    :cond_2
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x23

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 750
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTMF digit must be 0-9, *, #, A, B, C, D"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_4
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionDtmfReceived(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    goto :goto_1

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 757
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 569
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 568
    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 570
    return-void
.end method

.method public whitelist callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 603
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 602
    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 604
    return-void
.end method

.method public whitelist callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInviteParticipantsRequestDelivered()V
    .locals 1

    .line 437
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 453
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionMayHandover(II)V
    .locals 2
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    .line 534
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 533
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->onMayHandover(II)V

    .line 535
    return-void
.end method

.method public whitelist callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 2
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 246
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionMultipartyStateChanged(Z)V
    .locals 1
    .param p1, "isMultiParty"    # Z

    .line 646
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRemoveParticipantsRequestDelivered()V
    .locals 1

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 776
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    const-string v0, "extensions are required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 778
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 713
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 717
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 700
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 704
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionRttModifyResponseReceived(I)V
    .locals 1
    .param p1, "status"    # I

    .line 687
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1
    .param p1, "suppSrvNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 660
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 806
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist callSessionTransferred()V
    .locals 1

    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionTtyModeReceived(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 633
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 620
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onMayHandover(II)V
    .locals 1
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 547
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMayHandover(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
