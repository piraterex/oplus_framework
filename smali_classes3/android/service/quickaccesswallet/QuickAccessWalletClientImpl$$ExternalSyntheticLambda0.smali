.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$onServiceConnected$7$android-service-quickaccesswallet-QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method
