.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 867
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 870
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "createConnectionFailed %s"

    const-string v3, "Enqueueing pre-init conference request %s"

    const-string v4, "H.CS.crCoC"

    const-string v5, "H.CS.crCoF"

    const-string v6, "H.CS.crCo"

    const-string v7, "H.CS.r"

    const-string v12, "Enqueueing pre-init request %s"

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    .line 1305
    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1306
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.tBNUS"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1309
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1310
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1311
    .local v2, "isTracked":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "isTracked":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1314
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1315
    nop

    .line 1316
    goto/16 :goto_d

    .line 1313
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1314
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1315
    throw v0

    .line 1291
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1292
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.uAU"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1295
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1296
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1297
    .local v2, "isUsingAlternativeUi":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1299
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "isUsingAlternativeUi":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1300
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1301
    nop

    .line 1302
    goto/16 :goto_d

    .line 1299
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1300
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1301
    throw v0

    .line 1447
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1449
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oCFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1451
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1452
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 1454
    .local v2, "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1456
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1457
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1458
    nop

    .line 1459
    goto/16 :goto_d

    .line 1456
    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1457
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1458
    throw v0

    .line 1221
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1222
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cTrans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1225
    :try_start_3
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1227
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1228
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1229
    nop

    .line 1230
    goto/16 :goto_d

    .line 1227
    :catchall_3
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1228
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1229
    throw v0

    .line 1209
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1210
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.trans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1212
    :try_start_4
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v14, :cond_0

    move v13, v14

    :cond_0
    move v0, v13

    .line 1213
    .local v0, "isConfirmationRequired":Z
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-static {v2, v3, v4, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1215
    .end local v0    # "isConfirmationRequired":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1216
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1217
    nop

    .line 1218
    goto/16 :goto_d

    .line 1215
    :catchall_4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1216
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1217
    throw v0

    .line 1393
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1395
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.aP"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1397
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1399
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1400
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1401
    nop

    .line 1402
    goto/16 :goto_d

    .line 1399
    :catchall_5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1400
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1401
    throw v0

    .line 1186
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1187
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1189
    :try_start_6
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1191
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1192
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1193
    nop

    .line 1194
    goto/16 :goto_d

    .line 1191
    :catchall_6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1192
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1193
    throw v0

    .line 1063
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1064
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1067
    :try_start_7
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1068
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v12, v1

    .line 1069
    .local v12, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    move v1, v13

    :goto_0
    move v15, v1

    .line 1070
    .local v15, "isIncoming":Z
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v8, v1

    .line 1072
    .local v8, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v1, v1, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v1, :cond_2

    .line 1073
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v13, v1, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v14, Landroid/telecom/ConnectionService$2$6;

    const-string v3, "H.CS.crConfF.pIConfR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, v12

    move-object v11, v8

    .end local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v11, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move v8, v15

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$6;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1084
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$6;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1074
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1086
    .end local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    move-object v11, v8

    .end local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    const-string v1, "createConferenceFailed %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v10, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v11, v0, v12, v15}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1091
    .end local v0    # "id":Ljava/lang/String;
    .end local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v12    # "request":Landroid/telecom/ConnectionRequest;
    .end local v15    # "isIncoming":Z
    :goto_1
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1092
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1093
    nop

    .line 1094
    move-object/from16 v11, p1

    goto/16 :goto_d

    .line 1091
    :catchall_7
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1092
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1093
    throw v0

    .line 1036
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1037
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1040
    :try_start_8
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1041
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v4, v4, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v4, :cond_3

    .line 1042
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-static {v10, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v3, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v4, Landroid/telecom/ConnectionService$2$5;

    const-string v5, "H.CS.crConfC.pIConfR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$5;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$5;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1043
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1054
    :cond_3
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1057
    .end local v0    # "id":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1058
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1059
    nop

    .line 1060
    goto/16 :goto_d

    .line 1057
    :catchall_8
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1058
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1059
    throw v0

    .line 998
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 999
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1001
    :try_start_9
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 1003
    .local v5, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1004
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v1, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/telecom/ConnectionRequest;

    .line 1005
    .local v7, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_4

    move v8, v14

    goto :goto_3

    :cond_4
    move v8, v13

    .line 1006
    .local v8, "isIncoming":Z
    :goto_3
    iget v1, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v1, v14, :cond_5

    move v9, v14

    goto :goto_4

    :cond_5
    move v9, v13

    .line 1007
    .local v9, "isUnknown":Z
    :goto_4
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v1, v1, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v1, :cond_6

    .line 1008
    const-string v1, "Enqueueing pre-initconference request %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v10, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v13, v1, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v14, Landroid/telecom/ConnectionService$2$4;

    const-string v3, "H.CS.crConf.pIConfR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1021
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1009
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1023
    :cond_6
    iget-object v15, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v15 .. v20}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1030
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "request":Landroid/telecom/ConnectionRequest;
    .end local v8    # "isIncoming":Z
    .end local v9    # "isUnknown":Z
    :goto_5
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1031
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1032
    nop

    .line 1033
    goto/16 :goto_d

    .line 1030
    :catchall_9
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1031
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1032
    throw v0

    .line 1164
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1165
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.def"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1167
    :try_start_a
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1169
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1170
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1171
    nop

    .line 1172
    goto/16 :goto_d

    .line 1169
    :catchall_a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1170
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1171
    throw v0

    .line 1462
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1464
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.hC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1466
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1467
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1469
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1470
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1471
    nop

    .line 1472
    goto/16 :goto_d

    .line 1469
    :catchall_b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1470
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1471
    throw v0

    .line 1098
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1099
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.haF"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1102
    :try_start_c
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1103
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v9, v1

    .line 1104
    .local v9, "request":Landroid/telecom/ConnectionRequest;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v15, v1

    .line 1105
    .local v15, "reason":I
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v1, v1, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v1, :cond_7

    .line 1106
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v12, v1, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v13, Landroid/telecom/ConnectionService$2$7;

    const-string v3, "H.CS.haF.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v5, v0

    move-object v6, v9

    move v7, v15

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$7;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    .line 1116
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$7;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1107
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1118
    :cond_7
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v9, v15}, Landroid/telecom/ConnectionService;->-$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1122
    .end local v0    # "id":Ljava/lang/String;
    .end local v9    # "request":Landroid/telecom/ConnectionRequest;
    .end local v15    # "reason":I
    :goto_6
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1123
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1124
    nop

    .line 1125
    goto/16 :goto_d

    .line 1122
    :catchall_c
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1123
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1124
    throw v0

    .line 1532
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    .line 1533
    goto/16 :goto_d

    .line 1535
    :pswitch_f
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    .line 1536
    goto/16 :goto_d

    .line 938
    :pswitch_10
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 939
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 942
    :try_start_d
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 943
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v3, v3, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v3, :cond_8

    .line 944
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v10, v12, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v3, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    const-string v5, "H.CS.crCoC.pICR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 945
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 956
    :cond_8
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 959
    .end local v0    # "id":Ljava/lang/String;
    :goto_7
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 960
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 961
    nop

    .line 962
    goto/16 :goto_d

    .line 959
    :catchall_d
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 960
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 961
    throw v0

    .line 1517
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1519
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rTRUR"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1521
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1522
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1524
    .local v2, "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1526
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1527
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1528
    nop

    .line 1529
    goto/16 :goto_d

    .line 1526
    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1527
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1528
    throw v0

    .line 1504
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1506
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.-RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1508
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1509
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1511
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1512
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1513
    nop

    .line 1514
    goto/16 :goto_d

    .line 1511
    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1512
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1513
    throw v0

    .line 1489
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1491
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.+RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1493
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1494
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1496
    .restart local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1498
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    nop

    .line 1501
    goto/16 :goto_d

    .line 1498
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    throw v0

    .line 965
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 966
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 969
    :try_start_11
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 970
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v15, v1

    .line 971
    .local v15, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_9

    move v1, v14

    goto :goto_8

    :cond_9
    move v1, v13

    :goto_8
    move v8, v1

    .line 972
    .local v8, "isIncoming":Z
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v7, v1

    .line 974
    .local v7, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v1, v1, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v1, :cond_a

    .line 975
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v12, v1, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v13, Landroid/telecom/ConnectionService$2$3;

    const-string v3, "H.CS.crCoF.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v5, v7

    move-object v6, v0

    move-object v14, v7

    .end local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v14, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object v7, v15

    move/from16 v16, v8

    .end local v8    # "isIncoming":Z
    .local v16, "isIncoming":Z
    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 985
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 976
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 987
    .end local v14    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "isIncoming":Z
    .restart local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v8    # "isIncoming":Z
    :cond_a
    move-object v1, v7

    move/from16 v16, v8

    .end local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v8    # "isIncoming":Z
    .local v1, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "isIncoming":Z
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v10, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move/from16 v3, v16

    .end local v16    # "isIncoming":Z
    .local v3, "isIncoming":Z
    invoke-static {v2, v1, v0, v15, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 992
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "isIncoming":Z
    .end local v15    # "request":Landroid/telecom/ConnectionRequest;
    :goto_9
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 993
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 994
    nop

    .line 995
    goto/16 :goto_d

    .line 992
    :catchall_11
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 993
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 994
    throw v0

    .line 1475
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1477
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1479
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1480
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1481
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1483
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1484
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1485
    nop

    .line 1486
    goto/16 :goto_d

    .line 1483
    :catchall_12
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1484
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1485
    throw v0

    .line 1432
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1434
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sCE"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1436
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1437
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1438
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1439
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v4, v0, v2, v3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 1441
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1442
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1443
    nop

    .line 1444
    goto/16 :goto_d

    .line 1441
    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1442
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1443
    throw v0

    .line 1420
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1422
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1424
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 1426
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1427
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1428
    nop

    .line 1429
    goto/16 :goto_d

    .line 1426
    :catchall_14
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1427
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1428
    throw v0

    .line 1244
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1245
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.s"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1247
    :try_start_15
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 1249
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1250
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1251
    nop

    .line 1252
    goto/16 :goto_d

    .line 1249
    :catchall_15
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1250
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1251
    throw v0

    .line 1197
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1198
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rWM"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1201
    :try_start_16
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 1203
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    nop

    .line 1206
    goto/16 :goto_d

    .line 1203
    :catchall_16
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    throw v0

    .line 1381
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1383
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_17
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1385
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 1387
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1388
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1389
    nop

    .line 1390
    goto/16 :goto_d

    .line 1387
    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1388
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1389
    throw v0

    .line 1369
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1371
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_18
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.mC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1373
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 1375
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1376
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1377
    nop

    .line 1378
    goto/16 :goto_d

    .line 1375
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1376
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1377
    throw v0

    .line 1150
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1151
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.anV"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1154
    :try_start_19
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1155
    .restart local v0    # "callId":Ljava/lang/String;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1156
    .local v2, "videoState":I
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 1158
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "videoState":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1159
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1160
    nop

    .line 1161
    goto/16 :goto_d

    .line 1158
    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1159
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1160
    throw v0

    .line 886
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 888
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rCSA"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 890
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 892
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 893
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 894
    nop

    .line 895
    goto/16 :goto_d

    .line 892
    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 893
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 894
    throw v0

    .line 1406
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1408
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1b
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oPDC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1410
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1411
    .restart local v0    # "callId":Ljava/lang/String;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v14, :cond_b

    move v13, v14

    :cond_b
    move v2, v13

    .line 1412
    .local v2, "proceed":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 1414
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "proceed":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1415
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1416
    nop

    .line 1417
    goto/16 :goto_d

    .line 1414
    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1415
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1416
    throw v0

    .line 1357
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1359
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1c
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1361
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 1363
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1364
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1365
    nop

    .line 1366
    goto/16 :goto_d

    .line 1363
    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1364
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1365
    throw v0

    .line 1343
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1345
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1d
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.c"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1347
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1348
    .local v0, "callId1":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1349
    .local v2, "callId2":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 1351
    .end local v0    # "callId1":Ljava/lang/String;
    .end local v2    # "callId2":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1352
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1353
    nop

    .line 1354
    goto/16 :goto_d

    .line 1351
    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1352
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1353
    throw v0

    .line 1331
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_21
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1333
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1335
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 1337
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1338
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1339
    nop

    .line 1340
    goto/16 :goto_d

    .line 1337
    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1338
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1339
    throw v0

    .line 1319
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_22
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1321
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1323
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 1325
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1326
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1327
    nop

    .line 1328
    goto/16 :goto_d

    .line 1325
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1326
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1327
    throw v0

    .line 1277
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_23
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1278
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cASC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1281
    :try_start_20
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1282
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 1283
    .local v2, "audioState":Landroid/telecom/CallAudioState;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v2}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 1285
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "audioState":Landroid/telecom/CallAudioState;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1286
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1287
    nop

    .line 1288
    goto/16 :goto_d

    .line 1285
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1286
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1287
    throw v0

    .line 1266
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_24
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1267
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.u"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1269
    :try_start_21
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 1271
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1272
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1273
    nop

    .line 1274
    goto/16 :goto_d

    .line 1271
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1272
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1273
    throw v0

    .line 1255
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_25
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1256
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1258
    :try_start_22
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1260
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1261
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1262
    nop

    .line 1263
    goto/16 :goto_d

    .line 1260
    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1261
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1262
    throw v0

    .line 1233
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_26
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1234
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.d"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1236
    :try_start_23
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1238
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1239
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1240
    nop

    .line 1241
    goto/16 :goto_d

    .line 1238
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1239
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1240
    throw v0

    .line 1175
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_27
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1176
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1178
    :try_start_24
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1180
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1181
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1182
    nop

    .line 1183
    goto/16 :goto_d

    .line 1180
    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1181
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1182
    throw v0

    .line 1139
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_28
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1140
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.an"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1142
    :try_start_25
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1144
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1145
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1146
    nop

    .line 1147
    goto/16 :goto_d

    .line 1144
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1145
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1146
    throw v0

    .line 1128
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_29
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1129
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.ab"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1131
    :try_start_26
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1133
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1134
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1135
    nop

    .line 1136
    goto/16 :goto_d

    .line 1133
    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1134
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1135
    throw v0

    .line 898
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    .line 899
    .local v15, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 901
    :try_start_27
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 903
    .restart local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 904
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/telecom/ConnectionRequest;

    .line 905
    .local v7, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v15, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_c

    move v8, v14

    goto :goto_a

    :cond_c
    move v8, v13

    .line 906
    .restart local v8    # "isIncoming":Z
    :goto_a
    iget v1, v15, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v1, v14, :cond_d

    move v9, v14

    goto :goto_b

    :cond_d
    move v9, v13

    .line 907
    .local v9, "isUnknown":Z
    :goto_b
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-boolean v1, v1, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-nez v1, :cond_e

    .line 908
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v12, v1, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    new-instance v13, Landroid/telecom/ConnectionService$2$1;

    const-string v3, "H.CS.crCo.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 922
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 909
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 924
    :cond_e
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 932
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "request":Landroid/telecom/ConnectionRequest;
    .end local v8    # "isIncoming":Z
    .end local v9    # "isUnknown":Z
    :goto_c
    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 933
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 934
    nop

    .line 935
    goto :goto_d

    .line 932
    :catchall_27
    move-exception v0

    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 933
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 934
    throw v0

    .line 872
    .end local v15    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 874
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_28
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 875
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aCSA"

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 877
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v2, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 878
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 880
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 881
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 882
    nop

    .line 883
    goto :goto_d

    .line 880
    :catchall_28
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 881
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 882
    throw v0

    .line 1540
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .end packed-switch
.end method
