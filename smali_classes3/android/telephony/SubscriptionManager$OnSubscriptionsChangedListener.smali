.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Lcom/android/internal/telephony/util/HandlerExecutor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-direct {v1, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 1306
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;

    invoke-direct {v1, p0, p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$OnSubscriptionsChangedListenerHandler;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 1315
    return-void
.end method

.method private greylist-max-o log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1339
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void
.end method


# virtual methods
.method public blacklist getHandlerExecutor()Lcom/android/internal/telephony/util/HandlerExecutor;
    .locals 1

    .line 1301
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    return-object v0
.end method

.method public blacklist onAddListenerFailed()V
    .locals 2

    .line 1335
    const-string v0, "SubscriptionManager"

    const-string/jumbo v1, "onAddListenerFailed not overridden"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method

.method public whitelist onSubscriptionsChanged()V
    .locals 0

    .line 1324
    return-void
.end method
