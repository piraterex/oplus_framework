.class public Landroid/window/WindowTokenClient;
.super Landroid/app/IWindowToken$Stub;
.source "WindowTokenClient.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAttachToWindowContainer:Z

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;

.field private blacklist mShouldDumpConfigForIme:Z

.field private blacklist mWms:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$I5OMsDS9iNEE-FDunNhBpT9eO-c(Landroid/window/WindowTokenClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/WindowTokenClient;->onWindowTokenRemovedInner()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    const-class v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/app/IWindowToken$Stub;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 76
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private blacklist onWindowTokenRemovedInner()V
    .locals 2

    .line 292
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 293
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/content/Context;->destroy()V

    .line 295
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist attachContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 100
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    .line 102
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attachToDisplayArea(IILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "displayId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 116
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 117
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-virtual {p0, v0, p2, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return v1

    .line 123
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist attachToDisplayContent(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 135
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 137
    .local v0, "wms":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 142
    .local v2, "configuration":Landroid/content/res/Configuration;
    if-nez v2, :cond_1

    .line 143
    return v1

    .line 145
    :cond_1
    invoke-virtual {p0, v2, p1, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return v1

    .line 148
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 160
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detachFromWindowContainerIfNeeded()V
    .locals 2

    .line 169
    iget-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 195
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowTokenClient;)V

    .line 196
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 195
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;IZ)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "shouldReportConfigChange"    # Z

    .line 222
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 223
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 224
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    monitor-enter v1

    .line 232
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2, p2}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v2

    .line 233
    .local v2, "displayChanged":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p1

    move v7, v2

    invoke-static/range {v3 .. v8}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v3

    .line 236
    .local v3, "shouldUpdateResources":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    .line 237
    .local v4, "diff":I
    iget-boolean v5, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v5, :cond_1

    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 238
    .local v5, "currentConfig":Landroid/content/res/Configuration;
    :goto_0
    if-eqz v3, :cond_2

    .line 239
    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 241
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-nez v3, :cond_3

    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_3

    .line 244
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration is up to date. Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    if-eqz v3, :cond_7

    .line 251
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 253
    if-eqz p3, :cond_4

    instance-of v1, v0, Landroid/window/WindowContext;

    if-eqz v1, :cond_4

    .line 254
    move-object v1, v0

    check-cast v1, Landroid/window/WindowContext;

    .line 255
    .local v1, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, p1}, Landroid/window/WindowContext;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    .end local v1    # "windowContext":Landroid/window/WindowContext;
    :cond_4
    if-eqz p3, :cond_5

    if-eqz v4, :cond_5

    instance-of v1, v0, Landroid/window/WindowProviderService;

    if-eqz v1, :cond_5

    .line 261
    move-object v1, v0

    check-cast v1, Landroid/window/WindowProviderService;

    .line 262
    .local v1, "windowProviderService":Landroid/window/WindowProviderService;
    invoke-virtual {v1, p1}, Landroid/window/WindowProviderService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    .end local v1    # "windowProviderService":Landroid/window/WindowProviderService;
    :cond_5
    invoke-static {v4}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 265
    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_7

    .line 266
    if-nez p3, :cond_6

    .line 267
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only apply configuration update to Resources because shouldReportConfigChange is false.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    .line 268
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_6
    if-nez v4, :cond_7

    .line 270
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration has no  public difference with updated config.  Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 272
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 279
    invoke-virtual {v0, p2}, Landroid/content/Context;->updateDisplay(I)V

    .line 281
    :cond_8
    return-void

    .line 241
    .end local v2    # "displayChanged":Z
    .end local v3    # "shouldUpdateResources":Z
    .end local v4    # "diff":I
    .end local v5    # "currentConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist onWindowTokenRemoved()V
    .locals 2

    .line 286
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method
