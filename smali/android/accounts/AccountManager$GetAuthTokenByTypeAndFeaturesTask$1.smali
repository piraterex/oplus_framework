.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    .line 2688
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2691
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v0, "accountType"

    const-string v1, "authAccount"

    const/4 v2, 0x0

    .line 2692
    .local v2, "accountName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2694
    .local v3, "accountType":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2695
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2696
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .line 2706
    .end local v4    # "result":Landroid/os/Bundle;
    nop

    .line 2708
    if-nez v2, :cond_1

    .line 2709
    iget-object v4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 2712
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v11}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    .line 2716
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2717
    .restart local v4    # "result":Landroid/os/Bundle;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    const-string v0, "authtoken"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const-string v0, "accountAccessId"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2722
    :try_start_1
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2725
    goto :goto_0

    .line 2723
    :catch_0
    move-exception v0

    .line 2727
    .end local v4    # "result":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 2729
    :cond_1
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-$$Nest$fputmNumAccounts(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)V

    .line 2730
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    .local v5, "account":Landroid/accounts/Account;
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 2733
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    .line 2736
    :cond_2
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v12, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    move-object v7, v5

    invoke-virtual/range {v6 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 2740
    .end local v5    # "account":Landroid/accounts/Account;
    :goto_1
    return-void

    .line 2703
    :catch_1
    move-exception v0

    .line 2704
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$500(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2705
    return-void

    .line 2700
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$400(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2702
    return-void

    .line 2697
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2698
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$300(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2699
    return-void
.end method
