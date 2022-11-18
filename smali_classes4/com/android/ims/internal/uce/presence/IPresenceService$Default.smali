.class public Lcom/android/ims/internal/uce/presence/IPresenceService$Default;
.super Ljava/lang/Object;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p3, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUri"    # Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUriList"    # [Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "myCapInfo"    # Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "presenceServiceHdl"    # I
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "serviceInfo"    # Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method
