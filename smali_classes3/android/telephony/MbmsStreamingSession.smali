.class public Landroid/telephony/MbmsStreamingSession;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsStreamingSession"

.field public static final whitelist MBMS_STREAMING_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsStreaming"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MBMS_STREAMING_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-streaming-service-override"

.field private static greylist-max-o sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private greylist-max-o mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field private greylist-max-o mKnownActiveStreamingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/mbms/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsStreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private greylist-max-o mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/MbmsStreamingSession;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsStreamingSession;)I
    .locals 0

    iget p0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    new-instance v0, Landroid/telephony/MbmsStreamingSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$1;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 94
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    .line 95
    iput p3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 96
    new-instance v0, Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 97
    return-void
.end method

.method private greylist-max-o bindAndInitialize()I
    .locals 3

    .line 292
    new-instance v0, Landroid/telephony/MbmsStreamingSession$3;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$3;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 354
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    const-string v2, "android.telephony.action.EmbmsStreaming"

    invoke-static {v1, v2, v0}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriptionId"    # I
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 126
    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Landroid/telephony/MbmsStreamingSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsStreamingSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V

    .line 132
    .local v0, "session":Landroid/telephony/MbmsStreamingSession;
    invoke-direct {v0}, Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I

    move-result v2

    .line 133
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 134
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    new-instance v1, Landroid/telephony/MbmsStreamingSession$2;

    invoke-direct {v1, p3, v2}, Landroid/telephony/MbmsStreamingSession$2;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_0
    return-object v0

    .line 127
    .end local v0    # "session":Landroid/telephony/MbmsStreamingSession;
    .end local v2    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create two instances of MbmsStreamingSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 152
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o sendErrorToApp(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 359
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 363
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 6

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 172
    .local v2, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->dispose(I)V

    .line 177
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/StreamingService;

    .line 178
    .local v4, "s":Landroid/telephony/mbms/StreamingService;
    invoke-virtual {v4}, Landroid/telephony/mbms/StreamingService;->getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->stop()V

    .line 179
    .end local v4    # "s":Landroid/telephony/mbms/StreamingService;
    goto :goto_0

    .line 180
    :cond_1
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    goto :goto_2

    .line 185
    .restart local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 174
    return-void

    .line 185
    .end local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 189
    throw v2

    .line 182
    :catch_0
    move-exception v2

    .line 185
    :goto_2
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 189
    nop

    .line 190
    return-void
.end method

.method public greylist-max-o onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V
    .locals 1
    .param p1, "service"    # Landroid/telephony/mbms/StreamingService;

    .line 288
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public whitelist requestUpdateStreamingServices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 208
    .local v0, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v0, :cond_2

    .line 212
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v2

    .line 214
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 219
    if-eqz v2, :cond_0

    .line 220
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 227
    .end local v2    # "returnCode":I
    :cond_0
    goto :goto_0

    .line 216
    .restart local v2    # "returnCode":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 217
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .end local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .end local p1    # "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v2    # "returnCode":I
    .restart local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .restart local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .restart local p1    # "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MbmsStreamingSession"

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 225
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 209
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startStreaming(Landroid/telephony/mbms/StreamingServiceInfo;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/StreamingServiceCallback;)Landroid/telephony/mbms/StreamingService;
    .locals 9
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;

    .line 251
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 252
    .local v0, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v0, :cond_2

    .line 256
    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;-><init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V

    move-object v7, v1

    .line 259
    .local v7, "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    new-instance v8, Landroid/telephony/mbms/StreamingService;

    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    move-object v1, v8

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/telephony/mbms/StreamingService;-><init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    .line 261
    .local v1, "serviceForApp":Landroid/telephony/mbms/StreamingService;
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 265
    invoke-virtual {p1}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-interface {v0, v3, v4, v7}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v3

    .line 266
    .local v3, "returnCode":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 271
    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 273
    return-object v2

    .line 281
    .end local v3    # "returnCode":I
    :cond_0
    nop

    .line 283
    return-object v1

    .line 268
    .restart local v3    # "returnCode":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 269
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .end local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .end local v7    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .end local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .end local p1    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/mbms/StreamingServiceCallback;
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v3    # "returnCode":I
    .restart local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .restart local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .restart local v7    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .restart local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .restart local p1    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/mbms/StreamingServiceCallback;
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MbmsStreamingSession"

    const-string v5, "Remote process died"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 278
    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 280
    return-object v2

    .line 253
    .end local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
