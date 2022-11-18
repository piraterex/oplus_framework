.class public Landroid/service/quickaccesswallet/IQuickAccessWalletService$Default;
.super Ljava/lang/Object;
.source "IQuickAccessWalletService.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletService;
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

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/quickaccesswallet/SelectWalletCardRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onWalletDismissed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
