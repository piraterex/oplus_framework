.class final Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
.super Landroid/media/ISpatializerOutputCallback$Stub;
.source "Spatializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerOutputDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerOutputCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerOutputDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerOutputChanged(I)V
    .locals 4
    .param p1, "output"    # I

    .line 1077
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmOutputListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v1}, Landroid/media/Spatializer;->-$$Nest$fgetmOutputListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object v1

    .line 1079
    .local v1, "listener":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/Spatializer$OnSpatializerOutputChangedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1080
    if-nez v1, :cond_0

    .line 1081
    return-void

    .line 1083
    :cond_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 1084
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_1
    iget-object v2, v1, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerOutputDispatcherStub;Landroid/media/CallbackUtil$ListenerInfo;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 1087
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_1
    return-void

    .line 1083
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    .line 1079
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local v1    # "listener":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/Spatializer$OnSpatializerOutputChangedListener;>;"
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method synthetic blacklist lambda$dispatchSpatializerOutputChanged$0$android-media-Spatializer$SpatializerOutputDispatcherStub(Landroid/media/CallbackUtil$ListenerInfo;I)V
    .locals 2
    .param p1, "listener"    # Landroid/media/CallbackUtil$ListenerInfo;
    .param p2, "output"    # I

    .line 1084
    iget-object v0, p1, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/Spatializer$OnSpatializerOutputChangedListener;

    iget-object v1, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->this$0:Landroid/media/Spatializer;

    .line 1085
    invoke-interface {v0, v1, p2}, Landroid/media/Spatializer$OnSpatializerOutputChangedListener;->onSpatializerOutputChanged(Landroid/media/Spatializer;I)V

    .line 1084
    return-void
.end method
