.class public abstract Landroid/service/quickaccesswallet/QuickAccessWalletService;
.super Landroid/app/Service;
.source "QuickAccessWalletService.java"


# static fields
.field public static final whitelist ACTION_VIEW_WALLET:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET"

.field public static final whitelist ACTION_VIEW_WALLET_SETTINGS:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.quickaccesswallet.QuickAccessWalletService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet"

.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletService"

.field public static final blacklist TILE_SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet.tile"


# instance fields
.field private blacklist mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private blacklist mEventListenerId:Ljava/lang/String;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 158
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method

.method private blacklist onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 3
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 272
    :try_start_0
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->getTargetActivityPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QAWalletService"

    const-string v2, "Error returning wallet cards"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 2
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 265
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V

    .line 267
    return-void
.end method

.method private blacklist registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 1
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 369
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 370
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 371
    return-void
.end method

.method private blacklist sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 3
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 353
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    const-string v1, "QAWalletService"

    if-nez v0, :cond_0

    .line 354
    const-string v0, "No dismiss listener registered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onWalletServiceEvent error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 362
    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 375
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 377
    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    goto :goto_0

    .line 379
    :cond_0
    const-string v0, "QAWalletService"

    const-string v1, "dismiss listener missing or replaced"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getTargetActivityPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$sendWalletServiceEvent$0$android-service-quickaccesswallet-QuickAccessWalletService(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 0
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 336
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "QAWalletService"

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 286
    const-string v0, "Warning: binding on pre-R device"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    const-string v0, "Wrong action"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_1
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method

.method public abstract whitelist onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V
.end method

.method public abstract whitelist onWalletDismissed()V
.end method

.method public final whitelist sendWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 2
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 336
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
