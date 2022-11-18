.class Landroid/accounts/AccountManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/accounts/AccountManager$AccountKeyData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 456
    iput-object p1, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p1, Landroid/accounts/AccountManager$AccountKeyData;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$2;->recompute(Landroid/accounts/AccountManager$AccountKeyData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Landroid/accounts/AccountManager$AccountKeyData;)Ljava/lang/String;
    .locals 4
    .param p1, "accountKeyData"    # Landroid/accounts/AccountManager$AccountKeyData;

    .line 459
    iget-object v0, p1, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    .line 460
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p1, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    .line 462
    .local v1, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 463
    if-eqz v1, :cond_0

    .line 465
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v2}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/accounts/IAccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 463
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
