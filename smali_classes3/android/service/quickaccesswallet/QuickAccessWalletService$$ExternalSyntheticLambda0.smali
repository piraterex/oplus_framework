.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->lambda$sendWalletServiceEvent$0$android-service-quickaccesswallet-QuickAccessWalletService(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method
