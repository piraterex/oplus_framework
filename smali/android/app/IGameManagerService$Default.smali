.class public Landroid/app/IGameManagerService$Default;
.super Ljava/lang/Object;
.source "IGameManagerService.java"

# interfaces
.implements Landroid/app/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableGameModes(Ljava/lang/String;)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGameMode(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAngleEnabled(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist setGameMode(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist setGameServiceProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameState"    # Landroid/app/GameState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
