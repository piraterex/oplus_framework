.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 274
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 277
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage msg.what = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IInCallService-->"

    invoke-static {v2, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    return-void

    .line 285
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 357
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalOnHandoverComplete(Ljava/lang/String;)V

    .line 359
    goto/16 :goto_0

    .line 351
    .end local v0    # "callId":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 352
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 353
    .local v1, "error":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnHandoverFailed(Ljava/lang/String;I)V

    .line 354
    goto/16 :goto_0

    .line 345
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "error":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 346
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 347
    .local v1, "reason":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    .line 348
    goto/16 :goto_0

    .line 339
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "reason":I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 340
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 341
    .local v1, "requestId":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    .line 342
    goto/16 :goto_0

    .line 327
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "requestId":I
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 329
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 332
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v4}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 335
    nop

    .line 336
    goto/16 :goto_0

    .line 334
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 335
    throw v1

    .line 324
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Phone;->internalSilenceRinger()V

    .line 325
    goto/16 :goto_0

    .line 321
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    .line 322
    goto/16 :goto_0

    .line 318
    :pswitch_7
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    .line 319
    goto/16 :goto_0

    .line 315
    :pswitch_8
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallAudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 316
    goto/16 :goto_0

    .line 304
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 306
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 307
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 308
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v3}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 311
    nop

    .line 312
    goto :goto_0

    .line 310
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 311
    throw v1

    .line 301
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    .line 302
    goto :goto_0

    .line 298
    :pswitch_b
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 299
    goto :goto_0

    .line 289
    :pswitch_c
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    const-string/jumbo v1, "handleMessage MSG_SET_IN_CALL_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->logDebug(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v2, Landroid/telecom/Phone;

    new-instance v3, Landroid/telecom/InCallAdapter;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v3, v4}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 293
    invoke-virtual {v4}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v2, v3, v0, v4}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/telecom/InCallService;->-$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V

    .line 294
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 295
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    .line 296
    nop

    .line 364
    .end local v0    # "callingPackage":Ljava/lang/String;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
