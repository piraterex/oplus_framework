.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 430
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 432
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 438
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsImplExt:Lcom/android/internal/os/IBatteryStatsImplExt;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBatteryStatsImplExt;->onBatteryStatsMessageHandle(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    .line 443
    .local v0, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 467
    :pswitch_0
    if-eqz v0, :cond_3

    .line 468
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    goto :goto_2

    .line 455
    :pswitch_1
    if-eqz v0, :cond_3

    .line 457
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v2, :cond_1

    const-string v2, "android.os.action.CHARGING"

    goto :goto_0

    .line 459
    :cond_1
    const-string v2, "android.os.action.DISCHARGING"

    :goto_0
    nop

    .line 460
    .local v2, "action":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 464
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "action":Ljava/lang/String;
    goto :goto_2

    .line 460
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 450
    :pswitch_2
    if-eqz v0, :cond_3

    .line 451
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_2

    .line 445
    :pswitch_3
    if-eqz v0, :cond_3

    .line 446
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    .line 471
    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
