.class public Lcom/android/internal/telephony/IPhoneSubInfo$Default;
.super Ljava/lang/Object;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
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

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "keyType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImeiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsimDomain(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsimImpi(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsimImpu(I)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsimIst(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsimPcscf(I)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1AlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1Number(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingComponenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoiceMailAlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method
