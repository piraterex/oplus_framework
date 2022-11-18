.class Landroid/hardware/location/GeofenceHardwareImpl$3;
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

    .line 759
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 767
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 794
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 795
    .local v0, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 781
    .end local v0    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 782
    .local v0, "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 784
    .local v2, "monitoringType":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    .line 785
    .local v3, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 786
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 789
    .local v4, "b":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 791
    .end local v4    # "b":Landroid/os/IBinder;
    :goto_1
    goto :goto_3

    .line 769
    .end local v0    # "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v2    # "monitoringType":I
    .end local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 770
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 771
    .restart local v2    # "monitoringType":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    .line 772
    .restart local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 773
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 776
    .restart local v4    # "b":Landroid/os/IBinder;
    :try_start_1
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 777
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    .line 797
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v2    # "monitoringType":I
    .end local v3    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    .end local v4    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
