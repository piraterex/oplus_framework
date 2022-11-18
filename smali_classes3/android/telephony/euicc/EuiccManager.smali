.class public Landroid/telephony/euicc/EuiccManager;
.super Ljava/lang/Object;
.source "EuiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccManager$ErrorCode;,
        Landroid/telephony/euicc/EuiccManager$OperationCode;,
        Landroid/telephony/euicc/EuiccManager$OtaStatus;,
        Landroid/telephony/euicc/EuiccManager$EuiccActivationType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE:Ljava/lang/String; = "android.telephony.euicc.action.NOTIFY_CARRIER_SETUP_INCOMPLETE"

.field public static final whitelist ACTION_OTA_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.euicc.action.OTA_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_RESOLVE_ERROR:Ljava/lang/String; = "android.telephony.euicc.action.RESOLVE_ERROR"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.telephony.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_ERROR:I = 0x2

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_OK:I = 0x0

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR:I = 0x1

.field public static final whitelist ERROR_ADDRESS_MISSING:I = 0x271b

.field public static final whitelist ERROR_CARRIER_LOCKED:I = 0x2710

.field public static final whitelist ERROR_CERTIFICATE_ERROR:I = 0x271c

.field public static final whitelist ERROR_CONNECTION_ERROR:I = 0x271e

.field public static final whitelist ERROR_DISALLOWED_BY_PPR:I = 0x271a

.field public static final whitelist ERROR_EUICC_INSUFFICIENT_MEMORY:I = 0x2714

.field public static final whitelist ERROR_EUICC_MISSING:I = 0x2716

.field public static final whitelist ERROR_INCOMPATIBLE_CARRIER:I = 0x2713

.field public static final whitelist ERROR_INSTALL_PROFILE:I = 0x2719

.field public static final whitelist ERROR_INVALID_ACTIVATION_CODE:I = 0x2711

.field public static final whitelist ERROR_INVALID_CONFIRMATION_CODE:I = 0x2712

.field public static final whitelist ERROR_INVALID_PORT:I = 0x2721

.field public static final whitelist ERROR_INVALID_RESPONSE:I = 0x271f

.field public static final whitelist ERROR_NO_PROFILES_AVAILABLE:I = 0x271d

.field public static final whitelist ERROR_OPERATION_BUSY:I = 0x2720

.field public static final whitelist ERROR_SIM_MISSING:I = 0x2718

.field public static final whitelist ERROR_TIME_OUT:I = 0x2715

.field public static final whitelist ERROR_UNSUPPORTED_VERSION:I = 0x2717

.field public static final whitelist EUICC_ACTIVATION_TYPE_ACCOUNT_REQUIRED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_BACKUP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_TRANSFER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_IN_PROGRESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_NOT_NEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_STATUS_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_SUCCEEDED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACTIVATION_TYPE:Ljava/lang/String; = "android.telephony.euicc.extra.ACTIVATION_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE"

.field public static final whitelist EXTRA_ENABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.ENABLE_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORCE_PROVISION:Ljava/lang/String; = "android.telephony.euicc.extra.FORCE_PROVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FROM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.FROM_SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHYSICAL_SLOT_ID:Ljava/lang/String; = "android.telephony.euicc.extra.PHYSICAL_SLOT_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_NICKNAME:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_NICKNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_QR_SCANNER:Ljava/lang/String; = "android.telephony.euicc.extra.USE_QR_SCANNER"

.field public static final whitelist META_DATA_CARRIER_ICON:Ljava/lang/String; = "android.telephony.euicc.carriericon"

.field public static final whitelist OPERATION_APDU:I = 0x8

.field public static final whitelist OPERATION_DOWNLOAD:I = 0x5

.field public static final whitelist OPERATION_EUICC_CARD:I = 0x3

.field public static final whitelist OPERATION_EUICC_GSMA:I = 0x7

.field public static final whitelist OPERATION_HTTP:I = 0xb

.field public static final whitelist OPERATION_METADATA:I = 0x6

.field public static final whitelist OPERATION_SIM_SLOT:I = 0x2

.field public static final whitelist OPERATION_SMDX:I = 0x9

.field public static final whitelist OPERATION_SMDX_SUBJECT_REASON_CODE:I = 0xa

.field public static final whitelist OPERATION_SWITCH:I = 0x4

.field public static final whitelist OPERATION_SYSTEM:I = 0x1

.field public static final blacklist SHOULD_RESOLVE_PORT_INDEX_FOR_APPS:J = 0xd628eb8L

.field public static final blacklist SWITCH_WITHOUT_PORT_INDEX_EXCEPTION_ON_DISABLE:J = 0xd046b13L

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccManager"


# instance fields
.field private blacklist mCardId:I

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 849
    nop

    .line 850
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 851
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v1

    iput v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 852
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardId"    # I

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 857
    iput p2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 858
    return-void
.end method

.method private static greylist-max-o getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;
    .locals 1

    .line 1570
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1572
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    return-object v0
.end method

.method private blacklist refreshCardIdIfUninitialized()Z
    .locals 3

    .line 1546
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1549
    :cond_0
    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1550
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1551
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v2

    iput v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 1553
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    if-ne v0, v1, :cond_2

    .line 1554
    const/4 v0, 0x0

    return v0

    .line 1556
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o sendUnavailableError(Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1561
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    goto :goto_0

    .line 1562
    :catch_0
    move-exception v0

    .line 1565
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "resolutionIntent"    # Landroid/content/Intent;
    .param p2, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1032
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    nop

    .line 1034
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1036
    .local v0, "callbackIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1037
    invoke-static {v0}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1039
    :cond_0
    return-void

    .line 1042
    .end local v0    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    nop

    .line 1046
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createForCardId(I)Landroid/telephony/euicc/EuiccManager;
    .locals 2
    .param p1, "cardId"    # I

    .line 867
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist deleteSubscription(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1143
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1145
    return-void

    .line 1148
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1149
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1148
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    nop

    .line 1153
    return-void

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V
    .locals 8
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 970
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 972
    return-void

    .line 975
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 975
    move-object v3, p1

    move v4, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    nop

    .line 980
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "options"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1360
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1362
    return-void

    .line 1365
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    nop

    .line 1369
    return-void

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist eraseSubscriptions(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1334
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1336
    return-void

    .line 1339
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptions(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultDownloadableSubscriptionList(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1099
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1101
    return-void

    .line 1104
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1105
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    nop

    .line 1109
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1069
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1071
    return-void

    .line 1074
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1075
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1074
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    nop

    .line 1079
    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEid()Ljava/lang/String;
    .locals 3

    .line 897
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    const/4 v0, 0x0

    return-object v0

    .line 901
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .locals 2

    .line 1118
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    const/4 v0, 0x0

    return-object v0

    .line 1122
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOtaStatus()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 920
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x5

    return v0

    .line 924
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getOtaStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSupportedCountries()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1470
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1474
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUnsupportedCountries()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1497
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 883
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/euicc/EuiccManager;->refreshCardIdIfUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSimPortAvailable(I)Z
    .locals 3
    .param p1, "portIndex"    # I

    .line 1586
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1587
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1586
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSupportedCountry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1523
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    const/4 v0, 0x0

    return v0

    .line 1527
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1390
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1392
    return-void

    .line 1395
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    nop

    .line 1399
    return-void

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSupportedCountries(Ljava/util/List;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1416
    .local p1, "supportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    return-void

    .line 1420
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1422
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1423
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1420
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    nop

    .line 1427
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUnsupportedCountries(Ljava/util/List;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1444
    .local p1, "unsupportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1445
    return-void

    .line 1448
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1450
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1451
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1448
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    nop

    .line 1455
    return-void

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultIntent"    # Landroid/content/Intent;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1003
    nop

    .line 1004
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1005
    .local v0, "resolutionIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1008
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1009
    .local v1, "fillInIntent":Landroid/content/Intent;
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1011
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 1013
    return-void

    .line 1006
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid result intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist switchToSubscription(IILandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subscriptionId"    # I
    .param p2, "portIndex"    # I
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1268
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1270
    return-void

    .line 1273
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1278
    .local v0, "canWriteEmbeddedSubscriptions":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1279
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1280
    :cond_2
    const-string v1, "EuiccManager"

    const-string v2, "Not permitted to use switchToSubscription with portIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must have carrier privileges to use switchToSubscription with portIndex"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "portIndex":I
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    throw v1

    .line 1284
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v3, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1285
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1284
    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .end local v0    # "canWriteEmbeddedSubscriptions":Z
    nop

    .line 1289
    return-void

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1206
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1208
    return-void

    .line 1211
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1212
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xd046b13

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1216
    :cond_1
    const-string v0, "EuiccManager"

    const-string/jumbo v1, "switchToSubscription without portIndex is not allowed for disable operation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use switchToSubscription with portIndex API for disable operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "callbackIntent":Landroid/app/PendingIntent;
    throw v0

    .line 1221
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1222
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    nop

    .line 1226
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subscriptionId"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1305
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1307
    return-void

    .line 1310
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1311
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1310
    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    nop

    .line 1315
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
