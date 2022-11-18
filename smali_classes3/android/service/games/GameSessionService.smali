.class public abstract Landroid/service/games/GameSessionService;
.super Landroid/app/Service;
.source "GameSessionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_GAME_SESSION_SERVICE:Ljava/lang/String; = "android.service.games.action.GAME_SESSION_SERVICE"


# instance fields
.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mInterface:Landroid/service/games/IGameSessionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoCreate(Landroid/service/games/GameSessionService;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/games/GameSessionService;->doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/service/games/GameSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSessionService$1;-><init>(Landroid/service/games/GameSessionService;)V

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    return-void
.end method

.method private blacklist doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 11
    .param p1, "gameSessionController"    # Landroid/service/games/IGameSessionController;
    .param p2, "createGameSessionRequest"    # Landroid/service/games/CreateGameSessionRequest;
    .param p3, "gameSessionViewHostConfiguration"    # Landroid/service/games/GameSessionViewHostConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/games/IGameSessionController;",
            "Landroid/service/games/CreateGameSessionRequest;",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p4, "createGameSessionResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/CreateGameSessionResult;>;"
    invoke-virtual {p0, p2}, Landroid/service/games/GameSessionService;->onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;

    move-result-object v7

    .line 111
    .local v7, "gameSession":Landroid/service/games/GameSession;
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    .line 114
    .local v8, "display":Landroid/view/Display;
    if-nez v8, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No display found for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 118
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v9, v0

    .line 125
    .local v9, "hostToken":Landroid/os/IBinder;
    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v0, v1}, Landroid/service/games/GameSessionService;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v10

    .line 127
    .local v10, "windowContext":Landroid/content/Context;
    new-instance v4, Landroid/view/SurfaceControlViewHost;

    invoke-direct {v4, v10, v8, v9}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    .line 130
    .local v4, "surfaceControlViewHost":Landroid/view/SurfaceControlViewHost;
    nop

    .line 132
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionRequest;->getTaskId()I

    move-result v2

    iget v5, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v6, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    .line 130
    move-object v0, v7

    move-object v1, p1

    move-object v3, v10

    invoke-virtual/range {v0 .. v6}, Landroid/service/games/GameSession;->attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V

    .line 138
    new-instance v0, Landroid/service/games/CreateGameSessionResult;

    iget-object v1, v7, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    .line 140
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/games/CreateGameSessionResult;-><init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 142
    .local v0, "createGameSessionResult":Landroid/service/games/CreateGameSessionResult;
    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v7}, Landroid/service/games/GameSession;->doCreate()V

    .line 145
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.service.games.action.GAME_SESSION_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    invoke-interface {v0}, Landroid/service/games/IGameSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSessionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 89
    return-void
.end method

.method public abstract whitelist onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;
.end method
