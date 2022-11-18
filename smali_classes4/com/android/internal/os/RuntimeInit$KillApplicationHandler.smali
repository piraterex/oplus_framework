.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final blacklist mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .locals 1
    .param p1, "loggingHandler"    # Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 168
    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 224
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    .line 231
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 173
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 176
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 202
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 176
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfputmCrashing(Z)V

    .line 182
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 187
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    .local v1, "t2":Ljava/lang/Throwable;
    :try_start_2
    instance-of v2, v1, Landroid/os/DeadObjectException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    :try_start_3
    const-string v2, "AndroidRuntime"

    const-string v3, "Error reporting crash"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    goto :goto_0

    .line 195
    :catchall_1
    move-exception v2

    .line 201
    .end local v1    # "t2":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 202
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catchall_2
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 202
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 203
    throw v1
.end method
