.class final Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;
.super Ljava/lang/Object;
.source "GetWalletCardsCallbackImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/GetWalletCardsCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private blacklist mCalled:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;)V
    .locals 0
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    .line 44
    iput-object p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 45
    iput-object p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private blacklist isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z
    .locals 7
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 104
    const/4 v0, 0x0

    const-string v1, "QAWalletCallback"

    if-nez p1, :cond_0

    .line 105
    const-string v2, "Invalid response: response is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 109
    const-string v2, "Invalid response: walletCards is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    if-gez v2, :cond_2

    .line 113
    const-string v2, "Invalid response: selectedIndex is negative"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 118
    const-string v2, "Invalid response: selectedIndex out of bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-virtual {v3}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->getMaxCards()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 122
    const-string v2, "Invalid response: too many cards"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/quickaccesswallet/WalletCard;

    .line 126
    .local v3, "walletCard":Landroid/service/quickaccesswallet/WalletCard;
    if-nez v3, :cond_5

    .line 127
    const-string v2, "Invalid response: card is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v0

    .line 130
    :cond_5
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 131
    const-string v2, "Invalid response: cardId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 134
    :cond_6
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 135
    .local v5, "cardImage":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_7

    .line 136
    const-string v2, "Invalid response: cardImage is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v0

    .line 139
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 140
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v4, v6, :cond_8

    .line 141
    const-string v2, "Invalid response: cardImage bitmaps must be hardware bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0

    .line 144
    :cond_8
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    const-string v2, "Invalid response: contentDescription is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .line 148
    :cond_9
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_a

    .line 149
    const-string v2, "Invalid response: pendingIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0

    .line 152
    .end local v3    # "walletCard":Landroid/service/quickaccesswallet/WalletCard;
    .end local v5    # "cardImage":Landroid/graphics/drawable/Icon;
    :cond_a
    goto :goto_0

    .line 153
    :cond_b
    return v4
.end method

.method private blacklist onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 3
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 91
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "already called"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error returning failure message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 3
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 78
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "already called"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error returning wallet cards"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFailure$2$android-service-quickaccesswallet-GetWalletCardsCallbackImpl(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 74
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method synthetic blacklist lambda$onSuccess$0$android-service-quickaccesswallet-GetWalletCardsCallbackImpl(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 58
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method synthetic blacklist lambda$onSuccess$1$android-service-quickaccesswallet-GetWalletCardsCallbackImpl()V
    .locals 2

    .line 61
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public whitelist onFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 2
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 74
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public whitelist onSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 2
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 57
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "QAWalletCallback"

    const-string v1, "Invalid GetWalletCards response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :goto_0
    return-void
.end method
