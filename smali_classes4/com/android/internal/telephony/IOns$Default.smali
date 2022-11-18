.class public Lcom/android/internal/telephony/IOns$Default;
.super Ljava/lang/Object;
.source "IOns.java"

# interfaces
.implements Lcom/android/internal/telephony/IOns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOns;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEnable(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "callbackStub"    # Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "callbackStub"    # Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/AvailableNetworkInfo;",
            ">;",
            "Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    return-void
.end method
