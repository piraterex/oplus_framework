.class abstract Landroid/accounts/AccountManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$BaseFutureTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o mHandler:Landroid/os/Handler;

.field public final greylist-max-o mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2489
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    .line 2490
    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$1;

    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask$1;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2496
    iput-object p2, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    .line 2497
    new-instance p1, Landroid/accounts/AccountManager$BaseFutureTask$Response;

    invoke-direct {p1, p0}, Landroid/accounts/AccountManager$BaseFutureTask$Response;-><init>(Landroid/accounts/AccountManager$BaseFutureTask;)V

    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2498
    return-void
.end method

.method static synthetic blacklist access$100(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/accounts/AccountManager$BaseFutureTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 2485
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Landroid/accounts/AccountManager$BaseFutureTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 2485
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected greylist-max-o postRunnableToHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 2505
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmMainHandler(Landroid/accounts/AccountManager;)Landroid/os/Handler;

    move-result-object v0

    .line 2506
    .local v0, "handler":Landroid/os/Handler;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2507
    return-void
.end method

.method protected greylist-max-o startTask()V
    .locals 1

    .line 2511
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$BaseFutureTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    goto :goto_0

    .line 2512
    :catch_0
    move-exception v0

    .line 2513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    .line 2515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
