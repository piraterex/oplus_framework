.class final Landroid/service/notification/NotificationAssistantService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final blacklist MSG_ON_ACTION_INVOKED:I = 0x7

.field public static final blacklist MSG_ON_ALLOWED_ADJUSTMENTS_CHANGED:I = 0x8

.field public static final blacklist MSG_ON_NOTIFICATIONS_SEEN:I = 0x3

.field public static final blacklist MSG_ON_NOTIFICATION_CLICKED:I = 0xc

.field public static final blacklist MSG_ON_NOTIFICATION_DIRECT_REPLY_SENT:I = 0x5

.field public static final greylist-max-o MSG_ON_NOTIFICATION_ENQUEUED:I = 0x1

.field public static final blacklist MSG_ON_NOTIFICATION_EXPANSION_CHANGED:I = 0x4

.field public static final blacklist MSG_ON_NOTIFICATION_FEEDBACK_RECEIVED:I = 0xd

.field public static final greylist-max-o MSG_ON_NOTIFICATION_SNOOZED:I = 0x2

.field public static final blacklist MSG_ON_NOTIFICATION_VISIBILITY_CHANGED:I = 0xb

.field public static final blacklist MSG_ON_PANEL_HIDDEN:I = 0xa

.field public static final blacklist MSG_ON_PANEL_REVEALED:I = 0x9

.field public static final blacklist MSG_ON_SUGGESTED_REPLY_SENT:I = 0x6


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 515
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    .line 516
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 517
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 628
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 629
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 630
    .local v1, "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 631
    .local v2, "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 632
    .local v3, "feedback":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 633
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/os/Bundle;)V

    .line 634
    goto/16 :goto_2

    .line 621
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v3    # "feedback":Landroid/os/Bundle;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 622
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 623
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 624
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationClicked(Ljava/lang/String;)V

    .line 625
    goto/16 :goto_2

    .line 613
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 614
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 615
    .local v3, "key":Ljava/lang/String;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 616
    .local v1, "isVisible":Z
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 617
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v3, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 618
    goto/16 :goto_2

    .line 609
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "isVisible":Z
    .end local v3    # "key":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->onPanelHidden()V

    .line 610
    goto/16 :goto_2

    .line 602
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 603
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 604
    .local v1, "items":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 605
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onPanelRevealed(I)V

    .line 606
    goto/16 :goto_2

    .line 598
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "items":I
    :pswitch_5
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->onAllowedAdjustmentsChanged()V

    .line 599
    goto/16 :goto_2

    .line 589
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 590
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Action;

    .line 592
    .local v2, "action":Landroid/app/Notification$Action;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 593
    .local v3, "source":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 594
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onActionInvoked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 595
    goto/16 :goto_2

    .line 580
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "action":Landroid/app/Notification$Action;
    .end local v3    # "source":I
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 581
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 582
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 583
    .local v2, "reply":Ljava/lang/CharSequence;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 584
    .restart local v3    # "source":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 585
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 586
    goto/16 :goto_2

    .line 573
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "reply":Ljava/lang/CharSequence;
    .end local v3    # "source":I
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 574
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 575
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 576
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 577
    goto/16 :goto_2

    .line 564
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 565
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 566
    .local v3, "key":Ljava/lang/String;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .line 567
    .local v4, "isUserAction":Z
    :goto_0
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v5, v2, :cond_2

    move v1, v2

    .line 568
    .local v1, "isExpanded":Z
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 569
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v3, v4, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 570
    goto/16 :goto_2

    .line 557
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "isExpanded":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "isUserAction":Z
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 558
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 559
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 560
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationsSeen(Ljava/util/List;)V

    .line 561
    goto :goto_2

    .line 549
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 550
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 551
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 552
    .local v2, "snoozeCriterionId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 553
    iget-object v3, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v3, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 554
    goto :goto_2

    .line 523
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "snoozeCriterionId":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 524
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 525
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationChannel;

    .line 526
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 527
    .local v3, "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 528
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/Adjustment;

    move-result-object v4

    .line 529
    .local v4, "adjustment":Landroid/service/notification/Adjustment;
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-static {v5, v4}, Landroid/service/notification/NotificationAssistantService;->-$$Nest$msetAdjustmentIssuer(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/Adjustment;)V

    .line 530
    if-eqz v4, :cond_4

    .line 531
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v5

    const-string v6, "NotificationAssistants"

    if-nez v5, :cond_3

    .line 532
    const-string v5, "MSG_ON_NOTIFICATION_ENQUEUED: service not bound, skip."

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 536
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v7, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v7, v7, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v5, v7, v4}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 541
    :catch_0
    move-exception v5

    .line 543
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v7, "Enqueue adjustment failed; no longer connected"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_1
    goto :goto_2

    .line 538
    :catch_1
    move-exception v5

    .line 539
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v7, "Unable to contact notification manager"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 637
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v4    # "adjustment":Landroid/service/notification/Adjustment;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_2
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
