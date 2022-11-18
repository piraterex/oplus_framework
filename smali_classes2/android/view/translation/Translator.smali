.class public Landroid/view/translation/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$TranslationResponseCallbackImpl;,
        Landroid/view/translation/Translator$ServiceBinderReceiver;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_SERVICE_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final blacklist TAG:Ljava/lang/String; = "Translator"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field private blacklist mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Landroid/view/translation/TranslationManager;

.field private final blacklist mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

.field private blacklist mSystemServerBinder:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/Translator;->setServiceBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p3, "sessionId"    # I
    .param p4, "translationManager"    # Landroid/view/translation/TranslationManager;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "systemServerBinder"    # Landroid/view/translation/ITranslationManager;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    .line 201
    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    .line 203
    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    .line 204
    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    .line 205
    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    .line 206
    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    .line 207
    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    .line 208
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p3, "sessionId"    # I
    .param p4, "translationManager"    # Landroid/view/translation/TranslationManager;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "systemServerBinder"    # Landroid/view/translation/ITranslationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Landroid/view/translation/TranslationManager;",
            "Landroid/os/Handler;",
            "Landroid/view/translation/ITranslationManager;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p7, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/Translator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    .line 178
    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    .line 179
    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    .line 180
    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    .line 182
    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0, p7}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 185
    invoke-interface {v1, p2, v2, v0, v3}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist getNextRequestId()I
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    invoke-virtual {v0}, Landroid/view/translation/TranslationManager;->getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private blacklist setServiceBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 238
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    if-eqz v1, :cond_0

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    .line 243
    invoke-static {p1}, Landroid/view/translation/ITranslationDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    .line 245
    :cond_1
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 4

    .line 348
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 350
    monitor-exit v0

    return-void

    .line 352
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v1, v2}, Landroid/view/translation/ITranslationDirectManager;->onFinishTranslationSession(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "Translator"

    const-string v3, "RemoteException calling onSessionFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    .line 359
    iget-object v1, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/translation/TranslationManager;->removeTranslator(I)V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "translationContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public blacklist getTranslationContext()Landroid/view/translation/TranslationContext;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    return-object v0
.end method

.method public blacklist getTranslatorId()I
    .locals 1

    .line 255
    iget v0, p0, Landroid/view/translation/Translator;->mId:I

    return v0
.end method

.method public whitelist isDestroyed()Z
    .locals 2

    .line 369
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist isSessionCreated()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-virtual {v0}, Landroid/view/translation/Translator$ServiceBinderReceiver;->getSessionStateResult()I

    move-result v0

    .line 229
    .local v0, "receivedId":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    iget-object v0, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    const-string v1, "Translator"

    if-nez v0, :cond_0

    .line 380
    const-string v0, "Translator created without proper initialization."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 383
    :cond_0
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 386
    .local v0, "translationCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_0
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    .line 387
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 386
    invoke-interface {v2, p1, v3, v4, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException calling flushRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist start()V
    .locals 5

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    iget-object v3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    iget-object v4, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 215
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist translate(Landroid/view/translation/TranslationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "transport":Landroid/os/ICancellationSignal;
    if-eqz p2, :cond_0

    .line 330
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 331
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 333
    :cond_0
    new-instance v1, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v1, p4, p3}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 337
    .local v1, "responseCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_0
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v2, p1, v3, v0, v1}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException calling requestTranslate(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Translator"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 324
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "responseCallback":Landroid/service/translation/ITranslationCallback;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist translate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 293
    .local v0, "responseCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    .line 294
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 293
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling requestTranslate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translator"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 286
    .end local v0    # "responseCallback":Landroid/service/translation/ITranslationCallback;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
