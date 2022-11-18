.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    iput p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    iget v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$connectInternal$2$android-service-quickaccesswallet-QuickAccessWalletClientImpl(Landroid/content/Intent;I)V

    return-void
.end method
