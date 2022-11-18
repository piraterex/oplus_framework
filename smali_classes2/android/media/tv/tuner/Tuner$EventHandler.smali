.class Landroid/media/tv/tuner/Tuner$EventHandler;
.super Landroid/os/Handler;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1052
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    .line 1053
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1054
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1058
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1060
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/tuner/filter/Filter;

    .line 1061
    .local v0, "filter":Landroid/media/tv/tuner/filter/Filter;
    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1062
    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    goto :goto_0

    .line 1067
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/tuner/Tuner$EventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$EventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner$EventHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1078
    :cond_0
    monitor-exit v0

    .line 1079
    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1084
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic blacklist lambda$handleMessage$0$android-media-tv-tuner-Tuner$EventHandler()V
    .locals 3

    .line 1071
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-interface {v1, v2}, Landroid/media/tv/tuner/Tuner$OnResourceLostListener;->onResourceLost(Landroid/media/tv/tuner/Tuner;)V

    .line 1075
    :cond_0
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
