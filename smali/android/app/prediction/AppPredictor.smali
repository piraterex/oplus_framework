.class public final Landroid/app/prediction/AppPredictor;
.super Ljava/lang/Object;
.source "AppPredictor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictor$CallbackWrapper;,
        Landroid/app/prediction/AppPredictor$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private final blacklist mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPredictionManager:Landroid/app/prediction/IPredictionManager;

.field private final blacklist mRegisteredCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictor$Callback;",
            "Landroid/app/prediction/AppPredictor$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:Landroid/app/prediction/AppPredictionSessionId;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    const-class v0, Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/prediction/AppPredictionContext;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mToken:Landroid/os/IBinder;

    .line 97
    const-string v1, "app_prediction"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 98
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/prediction/IPredictionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    .line 99
    new-instance v3, Landroid/app/prediction/AppPredictionSessionId;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/prediction/AppPredictionSessionId;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 102
    :try_start_0
    invoke-interface {v2, p2, v3, v0}, Landroid/app/prediction/IPredictionManager;->createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create predictor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "AppPredictor.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 3

    .line 254
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 259
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify app target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 268
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    throw v0
.end method

.method public blacklist getSessionId()Landroid/app/prediction/AppPredictionSessionId;
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    return-object v0
.end method

.method public whitelist notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 117
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/prediction/IPredictionManager;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify app target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "launchLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p2, "targetIds":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTargetId;>;"
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/prediction/IPredictionManager;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify location shown event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V
    .locals 3
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 161
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    .line 171
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictor$Callback;)V

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 172
    .local v0, "callbackWrapper":Landroid/app/prediction/AppPredictor$CallbackWrapper;
    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v2, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/prediction/IPredictionManager;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 173
    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    nop

    .end local v0    # "callbackWrapper":Landroid/app/prediction/AppPredictor$CallbackWrapper;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register for prediction updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestPredictionUpdate()V
    .locals 3

    .line 213
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request prediction update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 236
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v3, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    invoke-direct {v3, p2, p3}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/app/prediction/IPredictionManager;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to sort targets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 189
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    .line 199
    .local v0, "callbackWrapper":Landroid/app/prediction/AppPredictor$CallbackWrapper;
    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v2, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/prediction/IPredictionManager;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "callbackWrapper":Landroid/app/prediction/AppPredictor$CallbackWrapper;
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister for prediction updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
