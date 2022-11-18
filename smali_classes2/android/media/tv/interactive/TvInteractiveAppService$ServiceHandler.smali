.class final Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final blacklist DO_CREATE_SESSION:I = 0x1

.field private static final blacklist DO_NOTIFY_RTE_STATE_CHANGED:I = 0x3

.field private static final blacklist DO_NOTIFY_SESSION_CREATED:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V
    .locals 0

    .line 1607
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService;Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V

    return-void
.end method

.method private blacklist broadcastRteStateChanged(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 1613
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1614
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1616
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;->onStateChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    goto :goto_1

    .line 1617
    :catch_0
    move-exception v2

    .line 1618
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppService"

    const-string v4, "error in broadcastRteStateChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1621
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1622
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1626
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const-string v2, "TvInteractiveAppService"

    packed-switch v0, :pswitch_data_0

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return-void

    .line 1674
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1675
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1676
    .local v1, "type":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1677
    .local v2, "state":I
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1678
    .local v3, "error":I
    invoke-direct {p0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->broadcastRteStateChanged(III)V

    .line 1679
    return-void

    .line 1657
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "type":I
    .end local v2    # "state":I
    .end local v3    # "error":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1658
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 1659
    .local v3, "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 1660
    .local v4, "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1663
    .local v5, "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    :try_start_0
    invoke-interface {v5, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    goto :goto_0

    .line 1664
    :catch_0
    move-exception v6

    .line 1665
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1667
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v3, :cond_0

    .line 1668
    invoke-static {v3, v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    .line 1670
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1671
    return-void

    .line 1628
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .end local v4    # "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .end local v5    # "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1629
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    .line 1630
    .local v3, "channel":Landroid/view/InputChannel;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1632
    .local v4, "cb":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1633
    .local v5, "iAppServiceId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1634
    .local v6, "type":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1635
    iget-object v7, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {v7, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService;->onCreateSession(Ljava/lang/String;I)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v7

    .line 1636
    .local v7, "sessionImpl":Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    if-nez v7, :cond_1

    .line 1639
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1642
    goto :goto_1

    .line 1640
    :catch_1
    move-exception v8

    .line 1641
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1645
    :cond_1
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {v1, v2, v7, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V

    .line 1648
    .local v1, "stub":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1649
    .local v2, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1650
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1651
    iput-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1652
    iget-object v8, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v8}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1653
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1654
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
