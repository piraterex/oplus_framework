.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$executeApiCall$6$android-service-quickaccesswallet-QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method
