.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .line 573
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 688
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 689
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence callback reaped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 691
    .local v1, "monitoringType":I
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 692
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 693
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 695
    .local v4, "geofenceId":I
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 696
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 692
    .end local v4    # "geofenceId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 699
    .end local v3    # "i":I
    :cond_2
    monitor-exit v2

    goto/16 :goto_9

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 651
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v1    # "monitoringType":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 652
    .local v0, "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 653
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 654
    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    if-eqz v2, :cond_3

    .line 658
    :try_start_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v1

    .line 661
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 662
    goto/16 :goto_9

    .line 654
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 637
    .end local v0    # "geofenceId":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 638
    .restart local v0    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 639
    :try_start_4
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 640
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 642
    if-eqz v2, :cond_4

    .line 644
    :try_start_5
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 645
    :catch_1
    move-exception v1

    .line 647
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 648
    goto/16 :goto_9

    .line 640
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 594
    .end local v0    # "geofenceId":I
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 595
    .restart local v0    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 596
    :try_start_7
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 597
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 599
    if-eqz v2, :cond_8

    .line 601
    :try_start_8
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 602
    :catch_2
    move-exception v1

    :goto_3
    nop

    .line 603
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 604
    .local v1, "callbackBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .line 605
    .local v3, "callbackInUse":Z
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 606
    :try_start_9
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 609
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 610
    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v1, :cond_5

    .line 611
    const/4 v3, 0x1

    .line 612
    goto :goto_5

    .line 609
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 615
    .end local v5    # "i":I
    :cond_6
    :goto_5
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 618
    if-nez v3, :cond_8

    .line 619
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 620
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 621
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 622
    .local v5, "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$fgetmCallback(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$fgetmCallback(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v6

    .line 623
    invoke-interface {v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v1, :cond_7

    .line 624
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 625
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->-$$Nest$munlinkToDeath(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    .line 626
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "GeofenceHardwareImpl"

    const-string v7, "Removed reaper %s because binder %s is no longer needed."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v5    # "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :cond_7
    goto :goto_6

    .line 615
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :catchall_3
    move-exception v5

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v5

    .line 633
    .end local v1    # "callbackBinder":Landroid/os/IBinder;
    .end local v3    # "callbackInUse":Z
    :cond_8
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 634
    goto/16 :goto_9

    .line 597
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2

    .line 581
    .end local v0    # "geofenceId":I
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 582
    .restart local v0    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 583
    :try_start_c
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 584
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 586
    if-eqz v2, :cond_9

    .line 588
    :try_start_d
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 589
    goto :goto_7

    :catch_3
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_7
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 592
    goto/16 :goto_9

    .line 584
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    .line 665
    .end local v0    # "geofenceId":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 666
    .local v0, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 667
    :try_start_f
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 670
    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Transition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTransition(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmLocation(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_a
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 676
    if-eqz v2, :cond_b

    .line 678
    :try_start_10
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmGeofenceId(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTransition(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmLocation(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v6

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmTimestamp(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v7

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->-$$Nest$fgetmMonitoringType(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v9

    move-object v3, v2

    invoke-interface/range {v3 .. v9}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_8

    .line 682
    :catch_4
    move-exception v1

    .line 684
    :cond_b
    :goto_8
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 685
    goto :goto_9

    .line 674
    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_6
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v2

    .line 701
    .end local v0    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
