.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskFragmentOrganizer.java"


# static fields
.field private static final blacklist KEY_ERROR_CALLBACK_EXCEPTION:Ljava/lang/String; = "fragment_exception"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final blacklist mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 59
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 191
    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 235
    new-instance v1, Landroid/window/TaskFragmentOrganizerToken;

    invoke-direct {v1, v0}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    .line 60
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 2

    .line 244
    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist putExceptionInBundle(Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "exceptionBundle":Landroid/os/Bundle;
    const-string v1, "fragment_exception"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public blacklist applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .locals 1
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/WindowContainerTransactionCallback;

    .line 187
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 188
    invoke-super {p0, p1, p2}, Landroid/window/WindowOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 1
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 178
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 179
    invoke-super {p0, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 180
    return-void
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist isActivityEmbedded(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 257
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 174
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 127
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 156
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 130
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 145
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .locals 0
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 133
    return-void
.end method

.method public blacklist registerOrganizer()V
    .locals 2

    .line 77
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimations(ILandroid/view/RemoteAnimationDefinition;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1, p2}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .locals 2

    .line 89
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterRemoteAnimations(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 124
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
