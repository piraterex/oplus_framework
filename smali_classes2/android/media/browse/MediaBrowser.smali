.class public final Landroid/media/browse/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$Subscription;,
        Landroid/media/browse/MediaBrowser$ServiceCallbacks;,
        Landroid/media/browse/MediaBrowser$MediaServiceConnection;,
        Landroid/media/browse/MediaBrowser$ItemCallback;,
        Landroid/media/browse/MediaBrowser$SubscriptionCallback;,
        Landroid/media/browse/MediaBrowser$ConnectionCallback;,
        Landroid/media/browse/MediaBrowser$MediaItem;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONNECT_STATE_CONNECTED:I = 0x3

.field private static final greylist-max-o CONNECT_STATE_CONNECTING:I = 0x2

.field private static final greylist-max-o CONNECT_STATE_DISCONNECTED:I = 0x1

.field private static final greylist-max-o CONNECT_STATE_DISCONNECTING:I = 0x0

.field private static final greylist-max-o CONNECT_STATE_SUSPENDED:I = 0x4

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final whitelist EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private volatile greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private volatile greylist-max-o mMediaSessionToken:Landroid/media/session/MediaSession$Token;

.field private final greylist-max-o mRootHints:Landroid/os/Bundle;

.field private volatile greylist-max-o mRootId:Ljava/lang/String;

.field private greylist-max-o mServiceBinder:Landroid/service/media/IMediaBrowserService;

.field private greylist-max-o mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field private final greylist-max-o mServiceComponent:Landroid/content/ComponentName;

.field private greylist-max-o mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field private volatile greylist-max-o mState:I

.field private final greylist-max-o mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/browse/MediaBrowser$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/browse/MediaBrowser;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootHints(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnection(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/media/browse/MediaBrowser;)I
    .locals 0

    iget p0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptions(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaSessionToken(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRootId(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceBinder(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceCallbacks(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceConnection(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V
    .locals 0

    iput p1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforceCloseConnection(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->forceCloseConnection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNewServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 0

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misCurrent(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monConnectionFailed(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser;->onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLoadChildren(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceConnected(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStateLabel(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 127
    if-eqz p1, :cond_3

    .line 130
    if-eqz p2, :cond_2

    .line 133
    if-eqz p3, :cond_1

    .line 136
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    .line 138
    iput-object p3, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 139
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    .line 140
    return-void

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o forceCloseConnection()V
    .locals 2

    .line 257
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 266
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 268
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    .line 269
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 270
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    .line 272
    return-void
.end method

.method private greylist-max-o getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 1

    .line 716
    new-instance v0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    invoke-direct {v0, p0}, Landroid/media/browse/MediaBrowser$ServiceCallbacks;-><init>(Landroid/media/browse/MediaBrowser;)V

    return-object v0
.end method

.method private static greylist-max-o getStateLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 561
    packed-switch p0, :pswitch_data_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_0
    const-string v0, "CONNECT_STATE_SUSPENDED"

    return-object v0

    .line 569
    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTED"

    return-object v0

    .line 567
    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTING"

    return-object v0

    .line 565
    :pswitch_3
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    return-object v0

    .line 563
    :pswitch_4
    const-string v0, "CONNECT_STATE_DISCONNECTING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "funcName"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    return v1

    .line 706
    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eq v0, v1, :cond_2

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 628
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$7;

    invoke-direct {v1, p0, p1}, Landroid/media/browse/MediaBrowser$7;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method private greylist-max-o onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/content/pm/ParceledListSlice;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 656
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/browse/MediaBrowser$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/browse/MediaBrowser$8;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    return-void
.end method

.method private greylist-max-o onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/media/session/MediaSession$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 579
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/browse/MediaBrowser$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/browse/MediaBrowser$6;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method private greylist-max-o subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    if-eqz p3, :cond_3

    .line 491
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$Subscription;

    .line 492
    .local v0, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    if-nez v0, :cond_0

    .line 493
    new-instance v1, Landroid/media/browse/MediaBrowser$Subscription;

    invoke-direct {v1}, Landroid/media/browse/MediaBrowser$Subscription;-><init>()V

    move-object v0, v1

    .line 494
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/browse/MediaBrowser$Subscription;->putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 500
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    if-nez p2, :cond_1

    .line 503
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2}, Landroid/service/media/IMediaBrowserService;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 505
    :cond_1
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 510
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 488
    .end local v0    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 521
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$Subscription;

    .line 522
    .local v0, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    if-nez v0, :cond_0

    .line 523
    return-void

    .line 527
    :cond_0
    if-nez p2, :cond_1

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2}, Landroid/service/media/IMediaBrowserService;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 530
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v2, v3}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    goto :goto_1

    .line 533
    :cond_1
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 534
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v2

    .line 535
    .local v2, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 536
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_3

    .line 537
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v5, p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v4, p1, v5, v6}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 541
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 542
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 550
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    .end local v2    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v3    # "i":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 546
    :catch_0
    move-exception v1

    .line 549
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$Subscription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p2, :cond_6

    .line 553
    :cond_5
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_6
    return-void

    .line 518
    .end local v0    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist connect()V
    .locals 3

    .line 150
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called while neither disconnecting nor disconnected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 152
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 156
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$1;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$1;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public whitelist disconnect()V
    .locals 2

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 215
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$2;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$2;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method greylist-max-o dump()V
    .locals 3

    .line 724
    const-string v0, "MediaBrowser"

    const-string v1, "MediaBrowser..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 3

    .line 315
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-object v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 317
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/browse/MediaBrowser$ItemCallback;

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    if-eqz p2, :cond_1

    .line 440
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x3

    const-string v2, "MediaBrowser"

    if-eq v0, v1, :cond_0

    .line 441
    const-string v0, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/media/browse/MediaBrowser$3;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void

    .line 450
    :cond_0
    new-instance v0, Landroid/media/browse/MediaBrowser$4;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p2, p1}, Landroid/media/browse/MediaBrowser$4;-><init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    .line 470
    .local v0, "receiver":Landroid/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1, p1, v0, v3}, Landroid/service/media/IMediaBrowserService;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/browse/MediaBrowser$5;

    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$5;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 438
    .end local v0    # "receiver":Landroid/os/ResultReceiver;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRoot()Ljava/lang/String;
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    .line 304
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 3

    .line 334
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isConnected()Z
    .locals 2

    .line 278
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 361
    return-void
.end method

.method public whitelist subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 387
    if-eqz p2, :cond_0

    .line 390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 391
    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 405
    return-void
.end method

.method public whitelist unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 419
    if-eqz p2, :cond_0

    .line 422
    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 423
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
