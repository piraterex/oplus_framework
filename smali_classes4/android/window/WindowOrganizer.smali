.class public Landroid/window/WindowOrganizer;
.super Ljava/lang/Object;
.source "WindowOrganizer.java"


# static fields
.field private static final blacklist IWindowOrganizerControllerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/IWindowOrganizerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Landroid/window/WindowOrganizer$1;

    invoke-direct {v0}, Landroid/window/WindowOrganizer$1;-><init>()V

    sput-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .locals 2

    .line 168
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .locals 1

    .line 175
    sget-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowOrganizerController;

    return-object v0
.end method


# virtual methods
.method public blacklist applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .locals 2
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/WindowContainerTransactionCallback;

    .line 80
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    iget-object v1, p2, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    invoke-interface {v0, p1, v1}, Landroid/window/IWindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 2
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IWindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .locals 2
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;
    .param p3, "callback"    # Landroid/window/WindowContainerTransactionCallback;

    .line 121
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 122
    if-eqz p3, :cond_0

    iget-object v1, p3, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Landroid/window/IWindowOrganizerController;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/window/ITransitionPlayer;

    .line 156
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IWindowOrganizerController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "syncCallback"    # Landroid/window/WindowContainerTransactionCallback;
    .param p4, "t"    # Landroid/window/WindowContainerTransaction;

    .line 142
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    iget-object v1, p3, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/window/IWindowOrganizerController;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "transitionToken"    # Landroid/os/IBinder;
    .param p3, "t"    # Landroid/window/WindowContainerTransaction;

    .line 100
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/window/IWindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
