.class final Landroid/os/SystemVibratorManager$SingleVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleVibrator"
.end annotation


# instance fields
.field private final blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field final synthetic blacklist this$0:Landroid/os/SystemVibratorManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V
    .locals 0
    .param p2, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 191
    iput-object p1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 192
    iput-object p2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "VibratorManager"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibratorManager$SingleVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 262
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 268
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 272
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "VibratorManager"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 283
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    .line 285
    .local v1, "delegate":Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add vibrate state listener to vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 287
    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 290
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    .end local v1    # "delegate":Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 294
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0}, Landroid/os/SystemVibratorManager;->cancel()V

    .line 232
    return-void
.end method

.method public blacklist cancel(I)V
    .locals 1
    .param p1, "usageFilter"    # I

    .line 236
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/SystemVibratorManager;->cancel(I)V

    .line 237
    return-void
.end method

.method protected blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isVibrating()Z
    .locals 3

    .line 241
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check status of vibrator "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no vibrator service."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1

    .line 247
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/os/IVibratorManagerService;->isVibrating(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 299
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    const-string v0, "VibratorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 302
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; no vibrator service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v0}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v1}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .local v1, "delegate":Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/os/IVibratorManagerService;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    const-string v2, "VibratorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove vibrate state listener from vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 313
    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 316
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    invoke-static {v2}, Landroid/os/SystemVibratorManager;->-$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 321
    .end local v1    # "delegate":Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 213
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 214
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    .line 216
    .local v0, "combined":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "vibe"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 223
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 224
    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    .line 226
    .local v0, "combined":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibratorManager$SingleVibrator;->this$0:Landroid/os/SystemVibratorManager;

    move v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/SystemVibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 227
    return-void
.end method
