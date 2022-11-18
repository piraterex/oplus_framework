.class Landroid/service/games/GameSession$1;
.super Landroid/service/games/IGameSession$Stub;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/games/GameSession;


# direct methods
.method constructor blacklist <init>(Landroid/service/games/GameSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/games/GameSession;

    .line 86
    iput-object p1, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-direct {p0}, Landroid/service/games/IGameSession$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDestroyed$0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 90
    move-object v0, p0

    check-cast v0, Landroid/service/games/GameSession;

    invoke-static {v0}, Landroid/service/games/GameSession;->-$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed()V
    .locals 3

    .line 89
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public blacklist onTaskFocusChanged(Z)V
    .locals 4
    .param p1, "focused"    # Z

    .line 104
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    .line 106
    if-eqz p1, :cond_0

    sget-object v3, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    .line 104
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public blacklist onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 4
    .param p1, "visibleDueToGesture"    # Z

    .line 96
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 96
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method
