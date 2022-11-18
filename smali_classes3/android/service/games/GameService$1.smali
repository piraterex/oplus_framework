.class Landroid/service/games/GameService$1;
.super Landroid/service/games/IGameService$Stub;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/games/GameService;


# direct methods
.method constructor blacklist <init>(Landroid/service/games/GameService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/games/GameService;

    .line 94
    iput-object p1, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-direct {p0}, Landroid/service/games/IGameService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$connected$0(Ljava/lang/Object;Landroid/service/games/IGameServiceController;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/service/games/IGameServiceController;

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/service/games/GameService;

    invoke-static {v0, p1}, Landroid/service/games/GameService;->-$$Nest$mdoOnConnected(Landroid/service/games/GameService;Landroid/service/games/IGameServiceController;)V

    return-void
.end method


# virtual methods
.method public blacklist connected(Landroid/service/games/IGameServiceController;)V
    .locals 3
    .param p1, "gameServiceController"    # Landroid/service/games/IGameServiceController;

    .line 97
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method public blacklist disconnected()V
    .locals 3

    .line 103
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist gameStarted(Landroid/service/games/GameStartedEvent;)V
    .locals 3
    .param p1, "gameStartedEvent"    # Landroid/service/games/GameStartedEvent;

    .line 109
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method
