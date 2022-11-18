.class public Lcom/android/internal/telephony/euicc/IEuiccCardController$Default;
.super Ljava/lang/Object;
.source "IEuiccCardController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "matchingId"    # Ljava/lang/String;
    .param p4, "serverSigned1"    # [B
    .param p5, "serverSignature1"    # [B
    .param p6, "euiccCiPkIdToBeUsed"    # [B
    .param p7, "serverCertificatein"    # [B
    .param p8, "callback"    # Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "transactionId"    # [B
    .param p4, "reason"    # I
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/ICancelSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "refresh"    # Z
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/IDisableProfileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "portIndex"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "events"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "boundProfilePackage"    # [B
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "hashCc"    # [B
    .param p4, "smdpSigned2"    # [B
    .param p5, "smdpSignature2"    # [B
    .param p6, "smdpCertificate"    # [B
    .param p7, "callback"    # Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "seqNumber"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "options"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IResetMemoryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "seqNumber"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "events"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "portIndex"    # I
    .param p5, "refresh"    # Z
    .param p6, "callback"    # Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
