.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private greylist-max-o mListening:Z

.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .line 569
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private greylist-max-o updateVolumeSlider(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .line 634
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$smisNotificationOrRing(I)Z

    move-result v0

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    nop

    .line 636
    .local v0, "streamMatch":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 637
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 639
    .local v1, "muted":Z
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmUiHandler(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 641
    .end local v1    # "muted":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 589
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 591
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 592
    .local v1, "streamType":I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 593
    .local v2, "streamValue":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mhasAudioProductStrategies(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 594
    invoke-direct {p0, v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 596
    .end local v1    # "streamType":I
    .end local v2    # "streamValue":I
    :cond_0
    goto/16 :goto_2

    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 597
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmRingerMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 600
    :cond_2
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAffectedByRingerMode(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 601
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_2

    .line 603
    :cond_3
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 604
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 605
    .restart local v1    # "streamType":I
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mhasAudioProductStrategies(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 606
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 607
    .local v2, "streamVolume":I
    invoke-direct {p0, v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 608
    .end local v2    # "streamVolume":I
    goto :goto_0

    .line 609
    :cond_4
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2, v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mgetVolumeGroupIdForLegacyStreamType(Landroid/preference/SeekBarVolumizer;I)I

    move-result v2

    .line 610
    .local v2, "volumeGroup":I
    if-eq v2, v3, :cond_5

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 612
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 613
    .local v3, "streamVolume":I
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 614
    invoke-direct {p0, v1, v3}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 618
    .end local v1    # "streamType":I
    .end local v2    # "volumeGroup":I
    .end local v3    # "streamVolume":I
    :cond_5
    :goto_0
    goto :goto_2

    :cond_6
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 619
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmZenMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 620
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2

    .line 621
    :cond_7
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 622
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmNotificationPolicy(Landroid/preference/SeekBarVolumizer;Landroid/app/NotificationManager$Policy;)V

    .line 623
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowAlarms(Landroid/preference/SeekBarVolumizer;Z)V

    .line 625
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v1, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowMedia(Landroid/preference/SeekBarVolumizer;Z)V

    .line 627
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowRinger(Landroid/preference/SeekBarVolumizer;Z)V

    .line 629
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    .line 631
    :cond_a
    :goto_2
    return-void
.end method

.method public greylist-max-o setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 573
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 574
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 575
    if-eqz p1, :cond_1

    .line 576
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 582
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    :goto_0
    return-void
.end method
