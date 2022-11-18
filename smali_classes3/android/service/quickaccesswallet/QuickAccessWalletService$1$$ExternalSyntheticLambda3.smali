.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

.field public final synthetic blacklist f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-virtual {v0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardsRequested$0$android-service-quickaccesswallet-QuickAccessWalletService$1(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
