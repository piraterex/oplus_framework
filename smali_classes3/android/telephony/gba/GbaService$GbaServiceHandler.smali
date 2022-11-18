.class Landroid/telephony/gba/GbaService$GbaServiceHandler;
.super Landroid/os/Handler;
.source "GbaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/GbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/gba/GbaService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/gba/GbaService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 94
    iput-object p1, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/gba/GbaAuthRequest;

    .line 103
    .local v0, "req":Landroid/telephony/gba/GbaAuthRequest;
    iget-object v1, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-static {v1}, Landroid/telephony/gba/GbaService;->-$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v2, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-static {v2}, Landroid/telephony/gba/GbaService;->-$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v5, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getSubId()I

    move-result v6

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v7

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getAppType()I

    move-result v8

    .line 107
    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v10

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->isForceBootStrapping()Z

    move-result v11

    .line 106
    invoke-virtual/range {v5 .. v11}, Landroid/telephony/gba/GbaService;->onAuthenticationRequest(IIILandroid/net/Uri;[BZ)V

    .line 108
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 112
    .end local v0    # "req":Landroid/telephony/gba/GbaAuthRequest;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
