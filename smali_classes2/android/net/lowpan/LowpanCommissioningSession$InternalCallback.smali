.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor blacklist <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReceiveFromCommissioner$0$android-net-lowpan-LowpanCommissioningSession$InternalCallback([B)V
    .locals 2
    .param p1, "packet"    # [B

    .line 76
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onConnectedChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 89
    return-void
.end method

.method public blacklist onEnabledChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 86
    return-void
.end method

.method public blacklist onLinkAddressAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public blacklist onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public blacklist onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 101
    return-void
.end method

.method public blacklist onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 104
    return-void
.end method

.method public blacklist onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .line 98
    return-void
.end method

.method public blacklist onReceiveFromCommissioner([B)V
    .locals 2
    .param p1, "packet"    # [B

    .line 74
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmHandler(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public blacklist onRoleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public blacklist onStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "fault"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 65
    :pswitch_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$mlockedCleanup(Landroid/net/lowpan/LowpanCommissioningSession;)V

    .line 67
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c4df21d -> :sswitch_1
        0x5cb3a22 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onUpChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 92
    return-void
.end method
