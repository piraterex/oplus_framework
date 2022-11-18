.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic blacklist val$request:Landroid/service/quickaccesswallet/SelectWalletCardRequest;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .param p2, "desc"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;->val$request:Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .locals 1
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;->val$request:Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    .line 162
    return-void
.end method
