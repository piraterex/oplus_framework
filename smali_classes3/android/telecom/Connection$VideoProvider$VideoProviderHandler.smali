.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    .line 1601
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1602
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1604
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    .line 1605
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1606
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1610
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1628
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1629
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 1630
    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 1631
    .local v2, "callback":Lcom/android/internal/telecom/IVideoCallback;
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1632
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "removeVideoProvider - skipped; not present."

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    goto/16 :goto_0

    .line 1635
    :cond_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    goto/16 :goto_0

    .line 1682
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_1
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    .line 1683
    goto/16 :goto_0

    .line 1679
    :pswitch_2
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    .line 1680
    goto/16 :goto_0

    .line 1676
    :pswitch_3
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    .line 1677
    goto/16 :goto_0

    .line 1673
    :pswitch_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1674
    goto/16 :goto_0

    .line 1663
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1665
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2, v3}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1669
    nop

    .line 1670
    goto/16 :goto_0

    .line 1668
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1669
    throw v1

    .line 1660
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    .line 1661
    goto/16 :goto_0

    .line 1657
    :pswitch_7
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    .line 1658
    goto/16 :goto_0

    .line 1654
    :pswitch_8
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    .line 1655
    goto :goto_0

    .line 1651
    :pswitch_9
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    .line 1652
    goto :goto_0

    .line 1640
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1642
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    .line 1643
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual/range {v3 .. v8}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1646
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    nop

    .line 1649
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_0

    .line 1646
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    throw v1

    .line 1612
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1613
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 1614
    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 1615
    .restart local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    if-nez v2, :cond_1

    .line 1616
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "addVideoProvider - skipped; callback is null."

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1617
    goto :goto_0

    .line 1620
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1621
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "addVideoProvider - skipped; already present."

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    goto :goto_0

    .line 1624
    :cond_2
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    nop

    .line 1687
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
