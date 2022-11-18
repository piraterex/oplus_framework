.class public Landroid/service/carrier/ICarrierMessagingCallback$Default;
.super Ljava/lang/Object;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDownloadMmsComplete(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onFilterComplete(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onSendMmsComplete(I[B)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onSendMultipartSmsComplete(I[I)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onSendSmsComplete(II)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
