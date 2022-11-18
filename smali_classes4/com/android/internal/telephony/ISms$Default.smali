.class public Lcom/android/internal/telephony/ISms$Default;
.super Ljava/lang/Object;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingApk"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "destAddress"    # Ljava/lang/String;
    .param p5, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "prefixes"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferredSmsSubscription()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSmsCapacityOnIccForSubscriber(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public blacklist isImsSmsSupportedForSubscriber(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSMSPromptEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSmsSimPickActivityNeeded(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetAllCellBroadcastRanges(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingattributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public blacklist sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public blacklist sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributeTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public blacklist sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    return-void
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    return-void
.end method

.method public blacklist setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    return-void
.end method

.method public blacklist setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageIndex"    # I
    .param p4, "newStatus"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method
