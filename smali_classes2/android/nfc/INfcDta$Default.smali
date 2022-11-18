.class public Landroid/nfc/INfcDta$Default;
.super Ljava/lang/Object;
.source "INfcDta.java"

# interfaces
.implements Landroid/nfc/INfcDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcDta;
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

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableClient()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist disableDta()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist disableServer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist enableClient(Ljava/lang/String;III)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableDta()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist enableServer(Ljava/lang/String;IIII)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerMessageService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msgServiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method
