.class public Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsCallSession;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/ImsCallSession;

    .line 1328
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 2
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1796
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/CallQuality;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1801
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1538
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1544
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1549
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1555
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1528
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1534
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1605
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1610
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .locals 2
    .param p1, "dtmf"    # C

    .line 1784
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;C)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1789
    return-void
.end method

.method public greylist-max-o callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1652
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1658
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1666
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1672
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1391
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1396
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1400
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1405
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1409
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1414
    return-void
.end method

.method public greylist-max-o callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1352
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1357
    return-void
.end method

.method public greylist-max-o callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1370
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1375
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1334
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1339
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1361
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1366
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered()V
    .locals 2

    .line 1563
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1569
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1573
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1579
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(II)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1638
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;II)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1644
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1463
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1476
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1485
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1490
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1453
    const-string v0, "ImsCallSession"

    const-string v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Z)V
    .locals 2
    .param p1, "isMultiParty"    # Z

    .line 1693
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Z)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1699
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1343
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1348
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered()V
    .locals 2

    .line 1583
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1588
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1592
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1598
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1427
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1432
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1436
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1441
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1418
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1423
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1810
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1816
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1753
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1758
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1741
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1746
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1716
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1722
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1729
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1734
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1703
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1709
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1379
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1384
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1771
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1776
    return-void
.end method

.method public blacklist callSessionTransferred()V
    .locals 2

    .line 1762
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1767
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1679
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1684
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1506
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1511
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1515
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1520
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1497
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1502
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1617
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;ILjava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1623
    return-void
.end method

.method synthetic blacklist lambda$callQualityChanged$39$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/CallQuality;)V
    .locals 1
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1797
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 1800
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtendFailed$18$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1539
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1543
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtendReceived$19$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1550
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1554
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtended$17$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1529
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1533
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceStateUpdated$24$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1606
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 1609
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionDtmfReceived$38$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(C)V
    .locals 1
    .param p1, "dtmf"    # C

    .line 1785
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionDtmfReceived(C)V

    .line 1788
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHandover$27$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1653
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1657
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHandoverFailed$28$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1667
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1671
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHeld$6$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1392
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1395
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHoldFailed$7$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1401
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1404
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHoldReceived$8$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1410
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1413
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiated$2$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1353
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1356
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiatedFailed$4$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1371
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1374
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiating$0$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1335
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1338
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiatingFailed$3$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1362
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1365
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInviteParticipantsRequestDelivered$20$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1564
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1568
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInviteParticipantsRequestFailed$21$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1574
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1578
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMayHandover$26$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(II)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1639
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V

    .line 1643
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMergeComplete$12$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1464
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_1

    .line 1465
    if-eqz p1, :cond_0

    .line 1467
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1468
    .local v0, "confSession":Landroid/telephony/ims/ImsCallSession;
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 1469
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 1470
    .end local v0    # "confSession":Landroid/telephony/ims/ImsCallSession;
    goto :goto_0

    .line 1472
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 1475
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMergeFailed$13$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1486
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1489
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMultipartyStateChanged$30$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Z)V
    .locals 2
    .param p1, "isMultiParty"    # Z

    .line 1694
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V

    .line 1698
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionProgressing$1$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1344
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1347
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRemoveParticipantsRequestDelivered$22$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1584
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1587
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRemoveParticipantsRequestFailed$23$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1593
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1597
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumeFailed$10$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1428
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1431
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumeReceived$11$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1437
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1440
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumed$9$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1419
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1422
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRtpHeaderExtensionsReceived$40$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Ljava/util/List;)V
    .locals 2
    .param p1, "extensions"    # Ljava/util/List;

    .line 1811
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V

    .line 1815
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttAudioIndicatorChanged$35$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1754
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1757
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttMessageReceived$34$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1742
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 1745
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttModifyRequestReceived$32$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1717
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1721
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttModifyResponseReceived$33$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1730
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    .line 1733
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionSuppServiceReceived$31$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1704
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1708
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTerminated$5$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1380
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1383
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTransferFailed$37$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1772
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1775
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTransferred$36$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1763
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V

    .line 1766
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTtyModeReceived$29$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1680
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V

    .line 1683
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdateFailed$15$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1507
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1510
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdateReceived$16$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1516
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1519
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdated$14$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1498
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1501
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUssdMessageReceived$25$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1618
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V

    .line 1622
    :cond_0
    return-void
.end method
