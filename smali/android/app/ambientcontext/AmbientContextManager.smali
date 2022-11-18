.class public final Landroid/app/ambientcontext/AmbientContextManager;
.super Ljava/lang/Object;
.source "AmbientContextManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/AmbientContextManager$StatusCode;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_AMBIENT_CONTEXT_EVENTS:Ljava/lang/String; = "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_MICROPHONE_DISABLED:I = 0x4

.field public static final whitelist STATUS_NOT_SUPPORTED:I = 0x2

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.ambientcontext.AmbientContextStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/ambientcontext/IAmbientContextManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ambientcontext/IAmbientContextManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ambientcontext/IAmbientContextManager;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    .line 135
    return-void
.end method

.method public static whitelist getEventsFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation

    .line 119
    const-string v0, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist integerSetToIntArray(Ljava/util/Set;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 216
    .local p0, "integerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 217
    .local v0, "intArray":[I
    const/4 v1, 0x0

    .line 218
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 219
    .local v3, "type":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 220
    .end local v3    # "type":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 221
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$queryAmbientContextServiceStatus$0(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "status"    # I

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$queryAmbientContextServiceStatus$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "consumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 183
    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 186
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v3
.end method

.method static synthetic blacklist lambda$registerObserver$2(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p1, "statusCode"    # I

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerObserver$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 285
    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "statusCode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 288
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    nop

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v3
.end method


# virtual methods
.method public whitelist queryAmbientContextServiceStatus(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 191
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-interface {v1, v2, v3, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "resultPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 284
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p4}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 293
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 297
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startConsentActivity(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    .line 208
    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v1

    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-interface {v0, v1, v2}, Landroid/app/ambientcontext/IAmbientContextManager;->startConsentActivity([ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterObserver()V
    .locals 2

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/ambientcontext/IAmbientContextManager;->unregisterObserver(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
