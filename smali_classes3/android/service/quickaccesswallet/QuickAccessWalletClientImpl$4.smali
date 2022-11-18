.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->notifyWalletDismissed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .param p2, "desc"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletDismissed()V

    .line 175
    return-void
.end method
