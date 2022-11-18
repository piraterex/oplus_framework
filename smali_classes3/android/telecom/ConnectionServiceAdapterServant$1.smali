.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    .line 83
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist internalHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 368
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 370
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 374
    goto/16 :goto_0

    .line 373
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 374
    throw v1

    .line 109
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 111
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConference;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    nop

    .line 119
    goto/16 :goto_0

    .line 117
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    throw v1

    .line 358
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 360
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 363
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 364
    nop

    .line 365
    goto/16 :goto_0

    .line 363
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 364
    throw v1

    .line 355
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 356
    goto/16 :goto_0

    .line 345
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 347
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    nop

    .line 352
    goto/16 :goto_0

    .line 350
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    throw v1

    .line 342
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 343
    goto/16 :goto_0

    .line 338
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 340
    goto/16 :goto_0

    .line 334
    :pswitch_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 336
    goto/16 :goto_0

    .line 331
    :pswitch_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 332
    goto/16 :goto_0

    .line 321
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 323
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    nop

    .line 328
    goto/16 :goto_0

    .line 326
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    throw v1

    .line 131
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 132
    goto/16 :goto_0

    .line 155
    :pswitch_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 157
    goto/16 :goto_0

    .line 311
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 313
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    nop

    .line 318
    goto/16 :goto_0

    .line 316
    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    throw v1

    .line 301
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 303
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 307
    nop

    .line 308
    goto/16 :goto_0

    .line 306
    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 307
    throw v1

    .line 291
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 293
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 297
    nop

    .line 298
    goto/16 :goto_0

    .line 296
    :catchall_7
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 297
    throw v1

    .line 281
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 283
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 287
    nop

    .line 288
    goto/16 :goto_0

    .line 286
    :catchall_8
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 287
    throw v1

    .line 194
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 196
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v4, v4

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 199
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    nop

    .line 201
    goto/16 :goto_0

    .line 199
    :catchall_9
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    throw v1

    .line 271
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 273
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConnection;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 277
    nop

    .line 278
    goto/16 :goto_0

    .line 276
    :catchall_a
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 277
    throw v1

    .line 261
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 263
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 267
    nop

    .line 268
    goto/16 :goto_0

    .line 266
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 267
    throw v1

    .line 250
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 252
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 256
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 257
    nop

    .line 258
    goto/16 :goto_0

    .line 256
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 257
    throw v1

    .line 240
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 242
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 246
    nop

    .line 247
    goto/16 :goto_0

    .line 245
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 246
    throw v1

    .line 230
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 232
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/StatusHints;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 236
    nop

    .line 237
    goto/16 :goto_0

    .line 235
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 236
    throw v1

    .line 226
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 228
    goto/16 :goto_0

    .line 216
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 218
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 221
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 222
    nop

    .line 223
    goto/16 :goto_0

    .line 221
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 222
    throw v1

    .line 213
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 214
    goto/16 :goto_0

    .line 204
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 206
    .local v0, "args2":Lcom/android/internal/os/SomeArgs;
    :try_start_10
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/RemoteServiceCallback;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 210
    nop

    .line 211
    goto/16 :goto_0

    .line 209
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 210
    throw v1

    .line 184
    .end local v0    # "args2":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 189
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    nop

    .line 191
    goto/16 :goto_0

    .line 189
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    throw v1

    .line 180
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 182
    goto/16 :goto_0

    .line 169
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 171
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConference;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    nop

    .line 177
    goto/16 :goto_0

    .line 175
    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    throw v1

    .line 159
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 161
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 165
    nop

    .line 166
    goto/16 :goto_0

    .line 164
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 165
    throw v1

    .line 151
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 153
    goto/16 :goto_0

    .line 147
    :pswitch_1f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 149
    goto/16 :goto_0

    .line 144
    :pswitch_20
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 145
    goto :goto_0

    .line 134
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 136
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/DisconnectCause;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    nop

    .line 141
    goto :goto_0

    .line 139
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    throw v1

    .line 128
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_22
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_23
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_24
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 123
    goto :goto_0

    .line 96
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 98
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConnection;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 104
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 105
    nop

    .line 106
    goto :goto_0

    .line 104
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 105
    throw v1

    .line 377
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    :goto_0
    return-void
.end method
