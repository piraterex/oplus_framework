.class Landroid/service/smartspace/SmartspaceService$1;
.super Landroid/service/smartspace/ISmartspaceService$Stub;
.source "SmartspaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/smartspace/SmartspaceService;


# direct methods
.method constructor blacklist <init>(Landroid/service/smartspace/SmartspaceService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/smartspace/SmartspaceService;

    .line 71
    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-direct {p0}, Landroid/service/smartspace/ISmartspaceService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCreateSmartspaceSession$0(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p2, "x$1"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 77
    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDestroySmartspaceSession$4(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 116
    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerSmartspaceUpdates$2(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "x$1"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 100
    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSmartspaceUpdate$1(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterSmartspaceUpdates$3(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "x$1"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 108
    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "event"    # Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 84
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 85
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public blacklist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3
    .param p1, "smartspaceConfig"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p2, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 76
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 77
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    return-void
.end method

.method public blacklist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 115
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 116
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public blacklist registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 99
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 100
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public blacklist requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 91
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 92
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method public blacklist unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 107
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    .line 108
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
