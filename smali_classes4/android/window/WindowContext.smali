.class public Landroid/window/WindowContext;
.super Landroid/content/ContextWrapper;
.source "WindowContext.java"

# interfaces
.implements Landroid/window/WindowProvider;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mType:I

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 77
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 79
    iput p2, p0, Landroid/window/WindowContext;->mType:I

    .line 80
    iput-object p3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    .line 81
    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 83
    .local v0, "token":Landroid/window/WindowTokenClient;
    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    .line 85
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist attachToDisplayArea()V
    .locals 4

    .line 94
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public blacklist destroy()V
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 123
    invoke-virtual {p0}, Landroid/window/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 126
    throw v0
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 142
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/window/WindowContext;->release()V

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    return-void
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getWindowType()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/window/WindowContext;->mType:I

    return v0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 131
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 132
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    .line 115
    invoke-virtual {p0}, Landroid/window/WindowContext;->destroy()V

    .line 116
    return-void
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 136
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 137
    return-void
.end method
