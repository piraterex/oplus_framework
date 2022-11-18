.class Landroid/media/tv/TvRecordingClient$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field greylist-max-o mChannelUri:Landroid/net/Uri;

.field greylist-max-o mConnectionParams:Landroid/os/Bundle;

.field final greylist-max-o mInputId:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/tv/TvRecordingClient;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "connectionParams"    # Landroid/os/Bundle;

    .line 439
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 440
    iput-object p2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 441
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 442
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 443
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "error"    # I

    .line 535
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 536
    const-string v0, "TvRecordingClient"

    const-string v1, "onError - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onError(I)V

    .line 540
    return-void
.end method

.method public greylist-max-o onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    .line 516
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    const-string v1, "TvRecordingClient"

    if-eq p0, v0, :cond_0

    .line 517
    const-string v0, "onRecordingStopped - session not created"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    const-string v0, "onRecordingStopped - recording not yet started"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V

    .line 525
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V

    .line 526
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V

    .line 527
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onRecordingStopped(Landroid/net/Uri;)V

    .line 528
    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 5
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 450
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 451
    const-string v0, "TvRecordingClient"

    const-string v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 456
    :cond_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V

    .line 459
    if-eqz p1, :cond_3

    .line 461
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 462
    .local v1, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 463
    .end local v1    # "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 465
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V

    .line 468
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onConnectionFailed(Ljava/lang/String;)V

    .line 472
    :cond_4
    :goto_1
    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .line 549
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 550
    const-string v0, "TvRecordingClient"

    const-string v1, "onSessionEvent - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 556
    :cond_1
    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 496
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 497
    const-string v0, "TvRecordingClient"

    const-string v1, "onSessionReleased - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V

    .line 501
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V

    .line 502
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V

    .line 503
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V

    .line 504
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V

    .line 505
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V

    .line 506
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onDisconnected(Ljava/lang/String;)V

    .line 509
    :cond_1
    return-void
.end method

.method public greylist-max-o onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 479
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    const-string v1, "TvRecordingClient"

    if-eq p0, v0, :cond_0

    .line 480
    const-string v0, "onTuned - session not created"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmIsTuned(Landroid/media/tv/TvRecordingClient;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V

    .line 488
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onTuned(Landroid/net/Uri;)V

    .line 489
    return-void

    .line 484
    :cond_2
    :goto_0
    const-string v0, "onTuned - already tuned or not yet tuned to last channel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method
