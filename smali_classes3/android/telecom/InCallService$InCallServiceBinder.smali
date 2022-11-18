.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/InCallService;)V
    .locals 0

    .line 368
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .line 380
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    return-void
.end method

.method public greylist-max-o bringToForeground(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .line 408
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    return-void
.end method

.method public greylist-max-o onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 403
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 404
    return-void
.end method

.method public greylist-max-o onCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .line 413
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 415
    return-void
.end method

.method public greylist-max-o onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 424
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 425
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 426
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 427
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public greylist-max-o onHandoverComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 449
    return-void
.end method

.method public greylist-max-o onHandoverFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 443
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 438
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    return-void
.end method

.method public greylist-max-o onRttUpgradeRequest(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 433
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public greylist-max-o setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 2
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .line 373
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    const-string v1, "InCallServiceBinder setInCallAdapter"

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->logDebug(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void
.end method

.method public greylist-max-o setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 391
    return-void
.end method

.method public greylist-max-o setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 396
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 397
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 399
    return-void
.end method

.method public greylist-max-o silenceRinger()V
    .locals 2

    .line 419
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    return-void
.end method

.method public greylist-max-o updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .line 385
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    return-void
.end method
