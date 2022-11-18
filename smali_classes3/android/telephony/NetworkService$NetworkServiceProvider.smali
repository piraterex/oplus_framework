.class public abstract Landroid/telephony/NetworkService$NetworkServiceProvider;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkServiceProvider"
.end annotation


# instance fields
.field private final blacklist mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyInfoChangedToCallbacks(Landroid/telephony/NetworkService$NetworkServiceProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyInfoChangedToCallbacks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/NetworkService;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/telephony/NetworkService;
    .param p2, "slotIndex"    # I

    .line 98
    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    .line 99
    iput p2, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    .line 100
    return-void
.end method

.method private blacklist notifyInfoChangedToCallbacks()V
    .locals 3

    .line 142
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    .line 144
    .local v1, "callback":Landroid/telephony/INetworkServiceCallback;
    :try_start_0
    invoke-interface {v1}, Landroid/telephony/INetworkServiceCallback;->onNetworkStateChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception v2

    .line 148
    .end local v1    # "callback":Landroid/telephony/INetworkServiceCallback;
    :goto_1
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private blacklist registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 130
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 136
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final whitelist notifyNetworkRegistrationInfoChanged()V
    .locals 5

    .line 125
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 2
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    .line 119
    return-void
.end method
