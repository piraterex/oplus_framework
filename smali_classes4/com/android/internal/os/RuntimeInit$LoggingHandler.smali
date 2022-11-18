.class Lcom/android/internal/os/RuntimeInit$LoggingHandler;
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
    name = "LoggingHandler"
.end annotation


# instance fields
.field public volatile blacklist mTriggered:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    .line 107
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidRuntime"

    invoke-static {v1, v0, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".hprof"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "FILE_NAME":Ljava/lang/String;
    new-instance v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v2, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .local v2, "mCrashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v3, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string/jumbo v4, "java.lang.OutOfMemoryError"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 122
    const-string v3, "/data/anr"

    .line 123
    .local v3, "directory":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "absolutePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v5

    .line 129
    .local v5, "err":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v5    # "err":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 127
    .local v5, "err":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "err":Ljava/io/IOException;
    goto :goto_0

    .line 131
    :goto_1
    const-string v5, "OutOfMemoryError IN SYSTEM PROCESS: Already dump hprof!"

    invoke-static {v1, v5, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "FILE_NAME":Ljava/lang/String;
    .end local v2    # "mCrashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v3    # "directory":Ljava/lang/String;
    .end local v4    # "absolutePath":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/internal/os/RuntimeInit;->logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 140
    :goto_2
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mRuntimeInitExt:Lcom/android/internal/os/IRuntimeInitExt;

    new-instance v1, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;

    invoke-direct {v1, p0}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/os/IRuntimeInitExt;->uncaughtExceptionExt(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 142
    return-void
.end method
