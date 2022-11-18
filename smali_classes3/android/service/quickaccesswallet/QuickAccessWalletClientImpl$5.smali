.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    .line 191
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onWalletServiceEvent$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 0
    .param p0, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;
    .param p1, "event"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 194
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method


# virtual methods
.method public blacklist onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 194
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method
