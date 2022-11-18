.class Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
.super Landroid/window/ITaskFpsCallback$Stub;
.source "WindowManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnFpsCallbackListenerProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/window/TaskFpsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/window/TaskFpsCallback;

    .line 475
    invoke-direct {p0}, Landroid/window/ITaskFpsCallback$Stub;-><init>()V

    .line 476
    iput-object p1, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 477
    iput-object p2, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    .line 478
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFpsReported$0$android-view-WindowManagerImpl$OnFpsCallbackListenerProxy(F)V
    .locals 1
    .param p1, "fps"    # F

    .line 483
    iget-object v0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    invoke-virtual {v0, p1}, Landroid/window/TaskFpsCallback;->onFpsReported(F)V

    .line 484
    return-void
.end method

.method public blacklist onFpsReported(F)V
    .locals 2
    .param p1, "fps"    # F

    .line 482
    iget-object v0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method
