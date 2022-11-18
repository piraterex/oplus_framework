.class public Landroid/hardware/radio/data/IRadioData$Default;
.super Ljava/lang/Object;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocatePduSessionId(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelHandover(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist deactivateDataCall(III)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getDataCallList(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlicingConfig(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist releasePduSessionId(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist setDataAllowed(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "profiles"    # [Landroid/hardware/radio/data/DataProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist setDataThrottling(IBJ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dataThrottlingAction"    # B
    .param p3, "completionDurationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dataProfileInfo"    # Landroid/hardware/radio/data/DataProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V
    .locals 0
    .param p1, "radioDataResponse"    # Landroid/hardware/radio/data/IRadioDataResponse;
    .param p2, "radioDataIndication"    # Landroid/hardware/radio/data/IRadioDataIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "accessNetwork"    # I
    .param p3, "dataProfileInfo"    # Landroid/hardware/radio/data/DataProfileInfo;
    .param p4, "roamingAllowed"    # Z
    .param p5, "reason"    # I
    .param p6, "addresses"    # [Landroid/hardware/radio/data/LinkAddress;
    .param p7, "dnses"    # [Ljava/lang/String;
    .param p8, "pduSessionId"    # I
    .param p9, "sliceInfo"    # Landroid/hardware/radio/data/SliceInfo;
    .param p10, "matchAllRuleAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist startHandover(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "keepalive"    # Landroid/hardware/radio/data/KeepaliveRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist stopKeepalive(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "sessionHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method
