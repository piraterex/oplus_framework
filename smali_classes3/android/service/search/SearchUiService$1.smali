.class Landroid/service/search/SearchUiService$1;
.super Landroid/service/search/ISearchUiService$Stub;
.source "SearchUiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/SearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/search/SearchUiService;


# direct methods
.method constructor blacklist <init>(Landroid/service/search/SearchUiService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/search/SearchUiService;

    .line 71
    iput-object p1, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-direct {p0}, Landroid/service/search/ISearchUiService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDestroy$0(Ljava/lang/Object;Landroid/app/search/SearchSessionId;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/app/search/SearchSessionId;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/service/search/SearchUiService;

    invoke-static {v0, p1}, Landroid/service/search/SearchUiService;->-$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V

    return-void
.end method


# virtual methods
.method public blacklist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 3
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 75
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 76
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 80
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

.method public blacklist onDestroy(Landroid/app/search/SearchSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 102
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 103
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "query"    # Landroid/app/search/Query;
    .param p3, "event"    # Landroid/app/search/SearchTargetEvent;

    .line 95
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 96
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public blacklist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "callback"    # Landroid/app/search/ISearchCallback;

    .line 87
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    new-instance v3, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-direct {v3, p3}, Landroid/service/search/SearchUiService$CallbackWrapper;-><init>(Landroid/app/search/ISearchCallback;)V

    .line 88
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method
