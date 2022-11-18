.class final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpsHolder"
.end annotation


# instance fields
.field private blacklist mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>()V

    return-void
.end method

.method private static blacklist getCallerMethodName()Ljava/lang/String;
    .locals 3

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 71
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 72
    const-string v1, "<bottom of call stack>"

    return-object v1

    .line 74
    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized blacklist getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .locals 3

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "InputMethodPrivilegedOperations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getCallerMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ignored. Call it within attachToken() and InputMethodService.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local p0    # "this":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .locals 3
    .param p1, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->mPrivOps:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IInputMethodPrivilegedOperations must be set at most once. privOps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local p1    # "privOps":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
