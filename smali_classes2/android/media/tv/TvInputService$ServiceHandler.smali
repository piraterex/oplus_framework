.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final greylist-max-o DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final greylist-max-o DO_ADD_HDMI_INPUT:I = 0x6

.field private static final greylist-max-o DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final greylist-max-o DO_CREATE_SESSION:I = 0x1

.field private static final greylist-max-o DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final greylist-max-o DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final greylist-max-o DO_REMOVE_HDMI_INPUT:I = 0x7

.field private static final blacklist DO_UPDATE_HDMI_INPUT:I = 0x8


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/TvInputService;)V
    .locals 0

    .line 2392
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private greylist-max-o broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2403
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2404
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2406
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2409
    goto :goto_1

    .line 2407
    :catch_0
    move-exception v2

    .line 2408
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2404
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2411
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2412
    return-void
.end method

.method private greylist-max-o broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2415
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2416
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2418
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2421
    goto :goto_1

    .line 2419
    :catch_0
    move-exception v2

    .line 2420
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2416
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2423
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2424
    return-void
.end method

.method private greylist-max-o broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2427
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2428
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2430
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    goto :goto_1

    .line 2431
    :catch_0
    move-exception v2

    .line 2432
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2428
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2435
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2436
    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 2440
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const/4 v2, 0x0

    const-string v3, "TvInputService"

    packed-switch v0, :pswitch_data_0

    .line 2579
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

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    return-void

    .line 2574
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2575
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 2576
    return-void

    .line 2566
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2567
    .restart local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2568
    .local v1, "inputId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2569
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2571
    :cond_0
    return-void

    .line 2558
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2559
    .restart local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 2560
    .local v1, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v1, :cond_1

    .line 2561
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2563
    :cond_1
    return-void

    .line 2550
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 2551
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2552
    .local v1, "inputId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2553
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2555
    :cond_2
    return-void

    .line 2542
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 2543
    .restart local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 2544
    .local v1, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v1, :cond_3

    .line 2545
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2547
    :cond_3
    return-void

    .line 2515
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2516
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2517
    .local v4, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2518
    .local v5, "inputId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2519
    .local v6, "sessionId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2520
    iget-object v7, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2521
    invoke-virtual {v7, v5, v6}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v7

    .line 2522
    .local v7, "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    if-nez v7, :cond_4

    .line 2525
    :try_start_0
    invoke-interface {v4, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2528
    goto :goto_0

    .line 2526
    :catch_0
    move-exception v2

    .line 2527
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2529
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2531
    :cond_4
    new-instance v8, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v9, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v8, v9, v7}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    .line 2534
    .local v8, "stub":Landroid/media/tv/ITvInputSession;
    :try_start_1
    invoke-interface {v4, v8, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2537
    goto :goto_1

    .line 2535
    :catch_1
    move-exception v2

    .line 2536
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2538
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v7, v4}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2539
    return-void

    .line 2498
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v5    # "inputId":Ljava/lang/String;
    .end local v6    # "sessionId":Ljava/lang/String;
    .end local v7    # "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    .end local v8    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2499
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/TvInputService$Session;

    .line 2500
    .local v2, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSession;

    .line 2501
    .local v4, "stub":Landroid/media/tv/ITvInputSession;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/ITvInputSessionCallback;

    .line 2502
    .local v5, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    .line 2504
    .local v6, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    invoke-interface {v5, v4, v6}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2507
    goto :goto_2

    .line 2505
    :catch_2
    move-exception v7

    .line 2506
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2508
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v2, :cond_5

    .line 2509
    invoke-static {v2, v5}, Landroid/media/tv/TvInputService$Session;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2511
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2512
    return-void

    .line 2442
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v4    # "stub":Landroid/media/tv/ITvInputSession;
    .end local v5    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v6    # "hardwareSessionToken":Landroid/os/IBinder;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2443
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputChannel;

    .line 2444
    .local v4, "channel":Landroid/view/InputChannel;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/ITvInputSessionCallback;

    .line 2445
    .restart local v5    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2446
    .local v6, "inputId":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 2447
    .local v7, "sessionId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2448
    iget-object v8, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v8, v6, v7}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v8

    .line 2449
    .local v8, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v8, :cond_6

    .line 2452
    :try_start_3
    invoke-interface {v5, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2455
    goto :goto_3

    .line 2453
    :catch_3
    move-exception v2

    .line 2454
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2456
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 2458
    :cond_6
    new-instance v9, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v10, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v9, v10, v8, v4}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    .line 2460
    .local v9, "stub":Landroid/media/tv/ITvInputSession;
    instance-of v10, v8, Landroid/media/tv/TvInputService$HardwareSession;

    if-eqz v10, :cond_a

    .line 2461
    move-object v10, v8

    check-cast v10, Landroid/media/tv/TvInputService$HardwareSession;

    .line 2463
    .local v10, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v10}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v11

    .line 2464
    .local v11, "hardwareInputId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2465
    invoke-static {v12, v11}, Landroid/media/tv/TvInputService;->-$$Nest$misPassthroughInput(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_4

    .line 2479
    :cond_7
    invoke-static {v10, v9}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)V

    .line 2480
    invoke-static {v10, v5}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2481
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)V

    .line 2482
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    const-string/jumbo v2, "tv_input"

    invoke-virtual {v1, v2}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    .line 2484
    .local v1, "manager":Landroid/media/tv/TvInputManager;
    invoke-static {v10}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fgetmHardwareSessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v11, v2, v3}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2486
    .end local v1    # "manager":Landroid/media/tv/TvInputManager;
    .end local v10    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v11    # "hardwareInputId":Ljava/lang/String;
    goto :goto_7

    .line 2466
    .restart local v10    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .restart local v11    # "hardwareInputId":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2467
    const-string v12, "Hardware input id is not setup yet."

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2469
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid hardware input id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :goto_5
    invoke-virtual {v8}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 2473
    :try_start_4
    invoke-interface {v5, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2476
    goto :goto_6

    .line 2474
    :catch_4
    move-exception v2

    .line 2475
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2477
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6
    return-void

    .line 2487
    .end local v10    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v11    # "hardwareInputId":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 2488
    .local v1, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2489
    iput-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2490
    iput-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2491
    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2492
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2493
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2495
    .end local v1    # "someArgs":Lcom/android/internal/os/SomeArgs;
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
