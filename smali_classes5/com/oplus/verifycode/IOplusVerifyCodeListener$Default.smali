.class public Lcom/oplus/verifycode/IOplusVerifyCodeListener$Default;
.super Ljava/lang/Object;
.source "IOplusVerifyCodeListener.java"

# interfaces
.implements Lcom/oplus/verifycode/IOplusVerifyCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/verifycode/IOplusVerifyCodeListener;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyIMELayoutChanged(ZII)V
    .locals 0
    .param p1, "imeVisible"    # Z
    .param p2, "imeTop"    # I
    .param p3, "imeBottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist notifyImeAttributeChanged(IZ)V
    .locals 0
    .param p1, "condType"    # I
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onBindService(Lcom/oplus/verifycode/IOplusVerifyCodeService;)V
    .locals 0
    .param p1, "oplusVerifyCodeService"    # Lcom/oplus/verifycode/IOplusVerifyCodeService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onUnBindService(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
