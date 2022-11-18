.class Landroid/service/games/GameSessionService$1;
.super Landroid/service/games/IGameSessionService$Stub;
.source "GameSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/games/GameSessionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/games/GameSessionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/games/GameSessionService;

    .line 67
    iput-object p1, p0, Landroid/service/games/GameSessionService$1;->this$0:Landroid/service/games/GameSessionService;

    invoke-direct {p0}, Landroid/service/games/IGameSessionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$create$0(Ljava/lang/Object;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/service/games/IGameSessionController;
    .param p2, "x$1"    # Landroid/service/games/CreateGameSessionRequest;
    .param p3, "x$2"    # Landroid/service/games/GameSessionViewHostConfiguration;
    .param p4, "x$3"    # Lcom/android/internal/infra/AndroidFuture;

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/service/games/GameSessionService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/service/games/GameSessionService;->-$$Nest$mdoCreate(Landroid/service/games/GameSessionService;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 7
    .param p1, "gameSessionController"    # Landroid/service/games/IGameSessionController;
    .param p2, "createGameSessionRequest"    # Landroid/service/games/CreateGameSessionRequest;
    .param p3, "gameSessionViewHostConfiguration"    # Landroid/service/games/GameSessionViewHostConfiguration;
    .param p4, "gameSessionFuture"    # Lcom/android/internal/infra/AndroidFuture;

    .line 74
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSessionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameSessionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSessionService$1;->this$0:Landroid/service/games/GameSessionService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
