.class public Lcom/android/internal/telephony/euicc/IEuiccController$Default;
.super Ljava/lang/Object;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
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

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "resolutionIntent"    # Landroid/content/Intent;
    .param p3, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "resolvedBundle"    # Landroid/os/Bundle;
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "options"    # I
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist getEid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cardId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
    .locals 1
    .param p1, "cardId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOtaStatus(I)I
    .locals 1
    .param p1, "cardId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedCountries(Z)Ljava/util/List;
    .locals 1
    .param p1, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCompatChangeEnabled(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "changeId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSimPortAvailable(IILjava/lang/String;)Z
    .locals 1
    .param p1, "cardId"    # I
    .param p2, "portIndex"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportedCountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist setSupportedCountries(ZLjava/util/List;)V
    .locals 0
    .param p1, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    .local p2, "countriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "portIndex"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
