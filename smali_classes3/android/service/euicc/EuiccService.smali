.class public abstract Landroid/service/euicc/EuiccService;
.super Landroid/app/Service;
.source "EuiccService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;,
        Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;,
        Landroid/service/euicc/EuiccService$Result;,
        Landroid/service/euicc/EuiccService$ResolvableError;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BIND_CARRIER_PROVISIONING_SERVICE:Ljava/lang/String; = "android.service.euicc.action.BIND_CARRIER_PROVISIONING_SERVICE"

.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_RESOLVE_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_RESOLVE_DEACTIVATE_SIM:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

.field public static final whitelist ACTION_RESOLVE_NO_PRIVILEGES:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

.field public static final whitelist ACTION_RESOLVE_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

.field public static final whitelist ACTION_START_CARRIER_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_CARRIER_ACTIVATION"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist CATEGORY_EUICC_UI:Ljava/lang/String; = "android.service.euicc.category.EUICC_UI"

.field public static final whitelist EUICC_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.euicc.EuiccService"

.field public static final whitelist EXTRA_RESOLUTION_ALLOW_POLICY_RULES:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

.field public static final whitelist EXTRA_RESOLUTION_CALLING_PACKAGE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

.field public static final whitelist EXTRA_RESOLUTION_CARD_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CARD_ID"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE_RETRIED:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

.field public static final whitelist EXTRA_RESOLUTION_CONSENT:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONSENT"

.field public static final whitelist EXTRA_RESOLUTION_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLUTION_SUBSCRIPTION_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_RESOLUTION_USE_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.extra.RESOLVABLE_ERRORS"

.field public static final whitelist RESOLVABLE_ERROR_CONFIRMATION_CODE:I = 0x1

.field public static final whitelist RESOLVABLE_ERROR_POLICY_RULES:I = 0x2

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_MUST_DEACTIVATE_SIM:I = -0x1

.field public static final whitelist RESULT_NEED_CONFIRMATION_CODE:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_RESOLVABLE_ERRORS:I = -0x2

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccService"


# instance fields
.field private greylist-max-o mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final greylist-max-o mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 333
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 334
    new-instance v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService$IEuiccServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 729
    const-string v0, "The connected LPA does not implement EuiccService#dump()"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public whitelist encodeSmdxSubjectAndReasonCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "subjectCode"    # Ljava/lang/String;
    .param p2, "reasonCode"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x3

    .line 354
    .local v0, "maxSupportedSection":I
    const/16 v1, 0xf

    .line 355
    .local v1, "maxSupportedDigit":I
    const/4 v2, 0x4

    .line 357
    .local v2, "bitsPerSection":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 361
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "subjectCodeToken":[Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "reasonCodeToken":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    if-gt v5, v6, :cond_4

    array-length v5, v3

    if-gt v5, v6, :cond_4

    .line 369
    const/16 v5, 0xa

    .line 372
    .local v5, "result":I
    array-length v7, v4

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    shl-int/2addr v5, v7

    .line 374
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/16 v10, 0xf

    if-ge v9, v7, :cond_1

    aget-object v11, v4, v9

    .line 375
    .local v11, "digitString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 376
    .local v12, "num":I
    if-gt v12, v10, :cond_0

    .line 379
    shl-int/lit8 v10, v5, 0x4

    add-int v5, v10, v12

    .line 374
    .end local v11    # "digitString":Ljava/lang/String;
    .end local v12    # "num":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 377
    .restart local v11    # "digitString":Ljava/lang/String;
    .restart local v12    # "num":I
    :cond_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "SubjectCode exceeds 15"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    .end local v11    # "digitString":Ljava/lang/String;
    .end local v12    # "num":I
    :cond_1
    array-length v7, v3

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    shl-int/2addr v5, v6

    .line 384
    array-length v6, v3

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v7, v3, v8

    .line 385
    .local v7, "digitString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 386
    .local v9, "num":I
    if-gt v9, v10, :cond_2

    .line 389
    shl-int/lit8 v11, v5, 0x4

    add-int v5, v11, v9

    .line 384
    .end local v7    # "digitString":Ljava/lang/String;
    .end local v9    # "num":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 387
    .restart local v7    # "digitString":Ljava/lang/String;
    .restart local v9    # "num":I
    :cond_2
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v8, "ReasonCode exceeds 15"

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 392
    .end local v7    # "digitString":Ljava/lang/String;
    .end local v9    # "num":I
    :cond_3
    return v5

    .line 366
    .end local v5    # "result":I
    :cond_4
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Only three nested layer is supported."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 358
    .end local v3    # "reasonCodeToken":[Ljava/lang/String;
    .end local v4    # "subjectCodeToken":[Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SubjectCode/ReasonCode is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 9

    .line 398
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 404
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Landroid/service/euicc/EuiccService$1;

    invoke-direct {v7, p0}, Landroid/service/euicc/EuiccService$1;-><init>(Landroid/service/euicc/EuiccService;)V

    const/4 v1, 0x4

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 418
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 419
    return-void
.end method

.method public abstract whitelist onDeleteSubscription(ILjava/lang/String;)I
.end method

.method public whitelist onDestroy()V
    .locals 1

    .line 424
    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 425
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 426
    return-void
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "forceDeactivateSim"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist onDownloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "resolvedBundle"    # Landroid/os/Bundle;

    .line 564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LPA must override onDownloadSubscription"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "resolvedBundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onEraseSubscriptions(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onEraseSubscriptions(II)I
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "options"    # I

    .line 707
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be overridden to enable the ResetOption parameter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.end method

.method public abstract whitelist onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.end method

.method public abstract whitelist onGetEid(I)Ljava/lang/String;
.end method

.method public abstract whitelist onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
.end method

.method public abstract whitelist onGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
.end method

.method public abstract whitelist onGetOtaStatus(I)I
.end method

.method public abstract whitelist onRetainSubscriptionsForFactoryReset(I)I
.end method

.method public abstract whitelist onStartOtaIfNecessary(ILandroid/service/euicc/EuiccService$OtaStatusChangedCallback;)V
.end method

.method public abstract whitelist onSwitchToSubscription(ILjava/lang/String;Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onSwitchToSubscriptionWithPort(IILjava/lang/String;Z)I
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "forceDeactivateSim"    # Z

    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LPA must override onSwitchToSubscriptionWithPort"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I
.end method
