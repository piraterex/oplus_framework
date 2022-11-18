.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    .line 254
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTargetActivityPendingIntentReceived$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "pendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 258
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;->onWalletPendingIntentRetrieved(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public blacklist onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 257
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method
