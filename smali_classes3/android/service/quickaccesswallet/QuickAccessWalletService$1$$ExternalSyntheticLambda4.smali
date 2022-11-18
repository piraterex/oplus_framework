.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletDismissed()V

    return-void
.end method
