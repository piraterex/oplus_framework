.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final greylist-max-o mAccount:Landroid/accounts/Account;

.field private final greylist-max-o mAuthority:Ljava/lang/String;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mSyncContext:Landroid/content/SyncContext;

.field private final greylist-max-o mThreadsKey:Landroid/accounts/Account;

.field final synthetic blacklist this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccount(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthority(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncContext(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .locals 0

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "syncContext"    # Landroid/content/SyncContext;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 317
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 318
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 319
    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 320
    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 321
    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 322
    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 323
    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mtoSyncKey(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    .line 324
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private greylist-max-o isCanceled()Z
    .locals 1

    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 11

    .line 328
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 330
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "SyncAdapter"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 339
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 340
    .local v0, "syncResult":Landroid/content/SyncResult;
    const/4 v3, 0x0

    .line 342
    .local v3, "provider":Landroid/content/ContentProviderClient;
    const/4 v9, 0x1

    :try_start_0
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 343
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    const-string v4, "SyncAdapter"

    const-string v5, "Already canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 377
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_2

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_2
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 383
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 388
    :try_start_1
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_4
    return-void

    .line 389
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 348
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 349
    const-string v4, "SyncAdapter"

    const-string v5, "Calling onPerformSync..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_6
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmContext(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v4

    .line 353
    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .local v10, "provider":Landroid/content/ContentProviderClient;
    if-eqz v10, :cond_7

    .line 354
    :try_start_4
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    move-object v7, v10

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 357
    :cond_7
    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z

    .line 360
    :goto_0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 361
    const-string v3, "SyncAdapter"

    const-string/jumbo v4, "onPerformSync done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 377
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v10, :cond_9

    .line 380
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_9
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 383
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_a
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 388
    :try_start_5
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 392
    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 389
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 377
    :catchall_2
    move-exception v4

    move-object v3, v10

    goto :goto_4

    .line 371
    :catch_0
    move-exception v4

    move-object v3, v10

    goto :goto_1

    .line 364
    :catch_1
    move-exception v4

    move-object v3, v10

    goto :goto_2

    .line 377
    .end local v10    # "provider":Landroid/content/ContentProviderClient;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    :catchall_3
    move-exception v4

    goto :goto_4

    .line 371
    :catch_2
    move-exception v4

    .line 372
    .local v4, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 373
    const-string v5, "SyncAdapter"

    const-string v6, "caught exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_b
    nop

    .end local v0    # "syncResult":Landroid/content/SyncResult;
    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .end local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    throw v4

    .line 364
    .end local v4    # "th":Ljava/lang/Throwable;
    .restart local v0    # "syncResult":Landroid/content/SyncResult;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catch_3
    move-exception v4

    .line 365
    .local v4, "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 366
    const-string v5, "SyncAdapter"

    const-string v6, "SecurityException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_c
    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 370
    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 377
    .end local v4    # "e":Ljava/lang/SecurityException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_d

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_d
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 383
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_e
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 388
    :try_start_8
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 392
    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_f
    move-object v10, v3

    .end local v3    # "provider":Landroid/content/ContentProviderClient;
    .restart local v10    # "provider":Landroid/content/ContentProviderClient;
    :cond_10
    :goto_3
    return-void

    .line 389
    .end local v10    # "provider":Landroid/content/ContentProviderClient;
    .restart local v3    # "provider":Landroid/content/ContentProviderClient;
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    .line 377
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    if-eqz v3, :cond_11

    .line 380
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 382
    :cond_11
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 383
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 387
    :cond_12
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 388
    :try_start_a
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 391
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 392
    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_13
    throw v4

    .line 389
    :catchall_5
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2
.end method
