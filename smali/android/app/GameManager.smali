.class public final Landroid/app/GameManager;
.super Ljava/lang/Object;
.source "GameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameManager$GameMode;
    }
.end annotation


# static fields
.field public static final whitelist GAME_MODE_BATTERY:I = 0x3

.field public static final whitelist GAME_MODE_PERFORMANCE:I = 0x2

.field public static final whitelist GAME_MODE_STANDARD:I = 0x1

.field public static final whitelist GAME_MODE_UNSUPPORTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "GameManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/IGameManagerService;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 84
    nop

    .line 85
    const-string v0, "game"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist getAvailableGameModes(Ljava/lang/String;)[I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGameMode()I
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IGameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getGameMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGameModeInfo(Ljava/lang/String;)Landroid/app/GameModeInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAngleEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->isAngleEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyGraphicsEnvironmentSetup()V
    .locals 3

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 210
    invoke-interface {v0, v1, v2}, Landroid/app/IGameManagerService;->notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGameMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setGameServiceProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 239
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->setGameServiceProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGameState(Landroid/app/GameState;)V
    .locals 3
    .param p1, "gameState"    # Landroid/app/GameState;

    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IGameManagerService;->setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
