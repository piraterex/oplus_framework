.class Landroid/service/appprediction/AppPredictionService$1;
.super Landroid/service/appprediction/IPredictionService$Stub;
.source "AppPredictionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/appprediction/AppPredictionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/appprediction/AppPredictionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/appprediction/AppPredictionService;

    .line 73
    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCreatePredictionSession$0(Ljava/lang/Object;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "x$1"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoCreatePredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDestroyPredictionSession$4(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 134
    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoDestroyPredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerPredictionUpdates$1(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "x$1"    # Landroid/app/prediction/IPredictionCallback;

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRegisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestPredictionUpdate$3(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 127
    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterPredictionUpdates$2(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "x$1"    # Landroid/app/prediction/IPredictionCallback;

    .line 120
    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoUnregisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 85
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 86
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method

.method public blacklist notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;

    .line 93
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 96
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 94
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public blacklist onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 3
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 78
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 79
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method

.method public blacklist onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 133
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 134
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public blacklist registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 111
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 112
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method public blacklist requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 126
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 127
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method

.method public blacklist sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 7
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 102
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 104
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    new-instance v6, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    const/4 v3, 0x0

    invoke-direct {v6, p3, v3}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;-><init>(Landroid/app/prediction/IPredictionCallback;Ljava/util/function/Consumer;)V

    .line 103
    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public blacklist unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 119
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 120
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method
