.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ImsCallSessionImplBase"

.field public static final whitelist USSD_MODE_NOTIFY:I = 0x0

.field public static final whitelist USSD_MODE_REQUEST:I = 0x1


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mServiceImpl:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public whitelist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 483
    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 379
    return-void
.end method

.method public whitelist deflect(Ljava/lang/String;)V
    .locals 0
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 491
    return-void
.end method

.method public whitelist extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 595
    return-void
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .locals 1

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 393
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 1

    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getServiceImpl()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 730
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 425
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 671
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;

    move-result-object v0

    .line 672
    .local v0, "provider":Landroid/telephony/ims/ImsVideoCallProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 548
    return-void
.end method

.method public whitelist inviteParticipants([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 605
    return-void
.end method

.method public whitelist isInCall()Z
    .locals 1

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMultiparty()Z
    .locals 1

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist merge()V
    .locals 0

    .line 573
    return-void
.end method

.method public whitelist reject(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 507
    return-void
.end method

.method public whitelist removeParticipants([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 615
    return-void
.end method

.method public whitelist resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 559
    return-void
.end method

.method public whitelist sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 640
    return-void
.end method

.method public whitelist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 726
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public whitelist sendRttMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 710
    return-void
.end method

.method public whitelist sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 696
    return-void
.end method

.method public whitelist sendRttModifyResponse(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 703
    return-void
.end method

.method public whitelist sendUssd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 664
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 745
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 746
    return-void
.end method

.method public whitelist setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 371
    return-void
.end method

.method public final greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    new-instance v0, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 360
    return-void
.end method

.method public whitelist setMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .line 441
    return-void
.end method

.method public greylist-max-o setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "serviceImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 735
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    .line 736
    return-void
.end method

.method public whitelist start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 457
    return-void
.end method

.method public whitelist startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 473
    return-void
.end method

.method public whitelist startDtmf(C)V
    .locals 0
    .param p1, "c"    # C

    .line 650
    return-void
.end method

.method public whitelist stopDtmf()V
    .locals 0

    .line 656
    return-void
.end method

.method public whitelist terminate(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 537
    return-void
.end method

.method public blacklist transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 0
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 527
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 518
    return-void
.end method

.method public whitelist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 584
    return-void
.end method
