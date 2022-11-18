.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 542
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 543
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 544
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .line 549
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 550
    .local v3, "slotIndex":I
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 552
    .local v15, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move-object v4, v2

    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v2, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto/16 :goto_8

    .line 667
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_0
    if-nez v15, :cond_0

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 668
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    .line 671
    .local v4, "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :try_start_0
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 673
    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 676
    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onApnUnthrottled. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 662
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :pswitch_1
    if-nez v15, :cond_2

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 663
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 664
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 665
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 658
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_2
    if-nez v15, :cond_3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 659
    :cond_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 660
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 651
    :pswitch_3
    if-nez v15, :cond_4

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 652
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 653
    .local v0, "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 654
    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_5

    .line 655
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 653
    :goto_1
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 656
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 644
    .end local v0    # "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_4
    if-nez v15, :cond_6

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 645
    :cond_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 646
    .local v0, "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 647
    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_7

    .line 648
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 646
    :goto_2
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 649
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 634
    .end local v0    # "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_5
    if-nez v15, :cond_8

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 635
    :cond_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 638
    .local v4, "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :try_start_1
    iget-object v0, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 639
    :catch_1
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onDataCallListChanged. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 629
    .end local v4    # "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :pswitch_6
    if-nez v15, :cond_9

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 630
    :cond_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 631
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 632
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 625
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_7
    if-nez v15, :cond_a

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 626
    :cond_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 627
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 619
    :pswitch_8
    if-nez v15, :cond_b

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 621
    :cond_b
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 623
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 609
    :pswitch_9
    if-nez v15, :cond_c

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 610
    :cond_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 612
    .local v0, "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    iget-object v5, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 614
    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_d

    .line 615
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_3

    .line 616
    :cond_d
    const/4 v4, 0x0

    .line 612
    :goto_3
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 617
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 599
    .end local v0    # "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    :pswitch_a
    if-nez v15, :cond_e

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 600
    :cond_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 602
    .local v0, "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    iget-object v5, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 604
    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_f

    .line 605
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_4

    .line 606
    :cond_f
    const/4 v4, 0x0

    .line 602
    :goto_4
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 607
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 589
    .end local v0    # "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    :pswitch_b
    if-nez v15, :cond_10

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 590
    :cond_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 592
    .local v0, "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    iget v5, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 594
    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_11

    .line 595
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_5

    .line 596
    :cond_11
    const/4 v4, 0x0

    .line 592
    :goto_5
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 597
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 575
    .end local v0    # "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    :pswitch_c
    if-nez v15, :cond_12

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 576
    :cond_12
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 577
    .local v0, "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    iget v5, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v6, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v8, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v9, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v10, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iget v11, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iget-object v12, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v13, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v14, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    .line 583
    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_13

    .line 584
    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v2, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v2}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object/from16 v16, v4

    goto :goto_6

    .line 585
    :cond_13
    const/16 v16, 0x0

    .line 577
    :goto_6
    move-object v4, v15

    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    move-object/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 587
    move-object/from16 v4, p1

    goto :goto_8

    .line 566
    .end local v0    # "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_d
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v0, 0x0

    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v0, "i":I
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_7
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 567
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 568
    if-eqz v15, :cond_14

    .line 569
    invoke-virtual {v15}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 566
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 572
    .end local v0    # "i":I
    :cond_15
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 573
    move-object/from16 v4, p1

    goto :goto_9

    .line 560
    :pswitch_e
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v2, :cond_16

    .line 561
    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 562
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v4, p1

    goto :goto_8

    .line 560
    :cond_16
    move-object/from16 v4, p1

    goto :goto_8

    .line 554
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_f
    move-object v2, v15

    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    move-object/from16 v4, p1

    iget v5, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v15

    .line 555
    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v15, :cond_17

    .line 556
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 683
    .end local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_8
    move-object v15, v2

    .end local v2    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v15    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_17
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
