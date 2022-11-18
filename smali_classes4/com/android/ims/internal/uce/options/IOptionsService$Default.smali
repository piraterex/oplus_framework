.class public Lcom/android/ims/internal/uce/options/IOptionsService$Default;
.super Ljava/lang/Object;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
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
.method public blacklist addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p3, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURI"    # Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURIList"    # [Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "reqUserdata"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "tId"    # I
    .param p3, "sipResponseCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p5, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .param p6, "bContactInBL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1
    .param p1, "optionsServiceHandle"    # I
    .param p2, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
