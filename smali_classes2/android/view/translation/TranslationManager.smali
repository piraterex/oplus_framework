.class public final Landroid/view/translation/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_CAPABILITIES:Ljava/lang/String; = "translation_capabilities"

.field private static final blacklist ID_GENERATOR:Ljava/util/Random;

.field public static final blacklist STATUS_SYNC_CALL_FAIL:I = 0x2

.field public static final blacklist STATUS_SYNC_CALL_SUCCESS:I = 0x1

.field static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationManager"

.field private static final blacklist sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist mCapabilityCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTranslatorIds:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/util/Random;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/translation/ITranslationManager;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    .line 116
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic blacklist lambda$addOnDeviceTranslationCapabilityUpdateListener$5(Landroid/util/Pair;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "formats"    # Landroid/util/Pair;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$0(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 154
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$2(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "translator"    # Landroid/view/translation/Translator;

    .line 162
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "translator"    # Landroid/view/translation/Translator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public greylist addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    const-string v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .local v1, "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    nop

    .end local v1    # "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addOnDeviceTranslationCapabilityUpdateListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p2, "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string v0, "capability listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "TranslationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnDeviceTranslationCapabilityUpdateListener: the listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered; ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_0
    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    :try_start_1
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 293
    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    nop

    .line 298
    :try_start_2
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 300
    return-void

    .line 295
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/TranslationManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    throw v3

    .line 299
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/TranslationManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist addTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 331
    return-void
.end method

.method public greylist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .locals 10
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 188
    .local v1, "translatorId":I
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 190
    new-instance v9, Landroid/view/translation/Translator;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    move-object v2, v9

    move-object v4, p1

    move v5, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V

    move-object v2, v9

    .line 193
    .local v2, "newTranslator":Landroid/view/translation/Translator;
    invoke-virtual {v2}, Landroid/view/translation/Translator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/view/translation/Translator;->isSessionCreated()Z

    move-result v4
    :try_end_1
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 196
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 198
    :cond_1
    :try_start_3
    iget-object v4, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->add(I)V
    :try_end_3
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    monitor-exit v0

    return-object v2

    .line 200
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    const-string v5, "TranslationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timed out getting create session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v0

    return-object v3

    .line 206
    .end local v1    # "translatorId":I
    .end local v2    # "newTranslator":Landroid/view/translation/Translator;
    .end local v4    # "e":Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 11
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/Translator;>;"
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 147
    .local v1, "translatorId":I
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 148
    move v2, v1

    .line 150
    .local v2, "tId":I
    new-instance v3, Landroid/view/translation/Translator;

    iget-object v4, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    new-instance v10, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, p2, p3, v2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    move-object v5, p1

    move v6, v2

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V

    .line 164
    nop

    .end local v1    # "translatorId":I
    .end local v2    # "tId":I
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .locals 1
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationManager;->createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    .line 445
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0

    return-object v1

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getOnDeviceTranslationCapabilities(II)Ljava/util/Set;
    .locals 5
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .line 240
    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    invoke-direct {v0}, Landroid/os/SynchronousResultReceiver;-><init>()V

    .line 241
    .local v0, "receiver":Landroid/os/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 241
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/view/translation/ITranslationManager;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 243
    const-wide/32 v1, 0xea60

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 245
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget v2, v1, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 248
    :cond_0
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "translation_capabilities"

    .line 249
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 250
    .local v2, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/translation/TranslationCapability;>;"
    new-instance v3, Landroid/util/ArraySet;

    .line 251
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .local v3, "capabilities":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/translation/TranslationCapability;>;"
    return-object v3

    .line 255
    .end local v0    # "receiver":Landroid/os/SynchronousResultReceiver;
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/translation/TranslationCapability;>;"
    .end local v3    # "capabilities":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/translation/TranslationCapability;>;"
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out getting supported translation capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 253
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 414
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const v1, 0xea60

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 416
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/view/translation/ITranslationManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    nop

    .line 421
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;
    :try_end_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    const-string v2, "TranslationManager"

    const-string v3, "Fail to get translation service settings activity."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x0

    return-object v2

    .line 417
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getTranslationCapabilities(II)Ljava/util/Set;
    .locals 1
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationCapabilities(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 432
    invoke-virtual {p0}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$createOnDeviceTranslator$4$android-view-translation-TranslationManager(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "tId"    # I
    .param p4, "translator"    # Landroid/view/translation/Translator;

    .line 152
    if-nez p4, :cond_0

    .line 153
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 155
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p4}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 163
    return-void

    .line 160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    const-string v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .local v1, "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 375
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 376
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    const-string v3, "TranslationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :goto_0
    goto :goto_1

    .line 383
    :cond_1
    const-string v2, "TranslationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format pair="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1    # "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeOnDeviceTranslationCapabilityUpdateListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    const-string v0, "capability callback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 345
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    if-nez v1, :cond_0

    .line 346
    const-string v2, "TranslationManager"

    const-string v3, "removeOnDeviceTranslationCapabilityUpdateListener: the capability listener not found; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 351
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 351
    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    nop

    .line 356
    :try_start_2
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 358
    return-void

    .line 353
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/TranslationManager;
    .end local p1    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    throw v3

    .line 357
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/TranslationManager;
    .restart local p1    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist removeTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 400
    return-void
.end method

.method blacklist removeTranslator(I)V
    .locals 3
    .param p1, "id"    # I

    .line 436
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 438
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 439
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 441
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
