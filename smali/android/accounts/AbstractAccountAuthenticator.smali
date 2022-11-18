.class public abstract Landroid/accounts/AbstractAccountAuthenticator;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AbstractAccountAuthenticator$Transport;
    }
.end annotation


# static fields
.field private static final greylist-max-o KEY_ACCOUNT:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

.field private static final greylist-max-o KEY_AUTH_TOKEN_TYPE:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

.field public static final whitelist KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field private static final greylist-max-o KEY_OPTIONS:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

.field private static final greylist-max-o KEY_REQUIRED_FEATURES:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountAuthenticator"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcheckBinderPermission(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$Transport-IA;)V

    iput-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    .line 151
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method private greylist-max-o checkBinderPermission()V
    .locals 6

    .line 514
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 515
    .local v0, "uid":I
    const-string v1, "android.permission.ACCOUNT_MANAGER"

    .line 516
    .local v1, "perm":Ljava/lang/String;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 519
    return-void

    .line 517
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lacks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    instance-of v0, p4, Landroid/accounts/NetworkErrorException;

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, "("

    const-string v4, "AccountAuthenticator"

    if-eqz v0, :cond_1

    .line 490
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_1
    instance-of v0, p4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " not supported"

    if-eqz v0, :cond_3

    .line 495
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    :cond_2
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_3
    instance-of v0, p4, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    .line 501
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    :cond_4
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 511
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract whitelist addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public whitelist addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$2;

    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$2;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 754
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 755
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract whitelist editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public whitelist finishSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "sessionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 908
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    const-string v2, "AccountAuthenticator"

    const-string v3, "errorMessage"

    const-string v4, "errorCode"

    if-eqz v0, :cond_0

    .line 909
    const-string v0, "Account type cannot be empty."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    const-string v1, "accountType cannot be empty."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-object v0

    .line 917
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    if-nez v7, :cond_1

    .line 918
    const-string v0, "Session bundle cannot be null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 920
    .restart local v0    # "result":Landroid/os/Bundle;
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    const-string/jumbo v1, "sessionBundle cannot be null."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-object v0

    .line 926
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    const-string v0, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 929
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    .restart local v0    # "result":Landroid/os/Bundle;
    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    const-string v1, "Authenticator must override finishSession if startAddAccountSession or startUpdateCredentialsSession is overridden."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v6, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 936
    return-object v0

    .line 938
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 939
    .local v8, "authTokenType":Ljava/lang/String;
    const-string v1, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 940
    .local v9, "options":Landroid/os/Bundle;
    const-string v2, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 941
    .local v10, "requiredFeatures":[Ljava/lang/String;
    const-string v3, "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/accounts/Account;

    .line 942
    .local v11, "account":Landroid/accounts/Account;
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 945
    .local v12, "containsKeyAccount":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 948
    .local v4, "sessionOptions":Landroid/os/Bundle;
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 953
    if-eqz v9, :cond_3

    .line 958
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 959
    move-object v4, v9

    move-object v13, v4

    goto :goto_0

    .line 953
    :cond_3
    move-object v13, v4

    .line 964
    .end local v4    # "sessionOptions":Landroid/os/Bundle;
    .local v13, "sessionOptions":Landroid/os/Bundle;
    :goto_0
    if-eqz v12, :cond_4

    .line 965
    move-object v14, p0

    invoke-virtual {p0, v6, v11, v8, v9}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 968
    :cond_4
    move-object v14, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v4, v10

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 2
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$1;

    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$1;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 728
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 3
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    return-object v0
.end method

.method public abstract whitelist getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract whitelist getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final whitelist getIBinder()Landroid/os/IBinder;
    .locals 1

    .line 527
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    invoke-virtual {v0}, Landroid/accounts/AbstractAccountAuthenticator$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public whitelist isCredentialsUpdateSuggested(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 993
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 994
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 995
    return-object v0
.end method

.method public whitelist startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Landroid/accounts/AbstractAccountAuthenticator$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/accounts/AbstractAccountAuthenticator$3;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 812
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist startUpdateCredentialsSession(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Landroid/accounts/AbstractAccountAuthenticator$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/accounts/AbstractAccountAuthenticator$4;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 866
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method
