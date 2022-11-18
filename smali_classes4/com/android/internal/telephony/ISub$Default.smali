.class public Lcom/android/internal/telephony/ISub$Default;
.super Ljava/lang/Object;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSubInfoRecord(Ljava/lang/String;I)I
    .locals 1
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0
    .param p1, "subIdList"    # [I
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canDisablePhysicalSubscription()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSubInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;
    .locals 1
    .param p1, "subIdList"    # [I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveDataSubscriptionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveSubIdList(Z)[I
    .locals 1
    .param p1, "visibleOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveSubInfoCountMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultDataSubId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultSmsSubId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultSubId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultVoiceSubId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnabledSubscriptionId(I)I
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "source"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSimStateForSlotIndex(I)I
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlotIndex(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubId(I)[I
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "groupUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubscriptionEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeSubInfo(Ljava/lang/String;I)I
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "subscriptionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0
    .param p1, "subIdList"    # [I
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    return-void
.end method

.method public blacklist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .locals 0
    .param p1, "cardId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist setDataRoaming(II)I
    .locals 1
    .param p1, "roaming"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDefaultDataSubId(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public blacklist setDefaultSmsSubId(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    return-void
.end method

.method public blacklist setDefaultVoiceSubId(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist setDeviceToDeviceStatusSharing(II)I
    .locals 1
    .param p1, "sharing"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I
    .locals 1
    .param p1, "contacts"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDisplayNameUsingSrc(Ljava/lang/String;II)I
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDisplayNumber(Ljava/lang/String;I)I
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setIconTint(II)I
    .locals 1
    .param p1, "tint"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOpportunistic(ZILjava/lang/String;)I
    .locals 1
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "source"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public blacklist setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    return-void
.end method

.method public blacklist setSubscriptionEnabled(ZI)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setUiccApplicationsEnabled(ZI)I
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setUsageSetting(IILjava/lang/String;)I
    .locals 1
    .param p1, "usageSetting"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    return v0
.end method
