.class public abstract Lcom/android/internal/inputmethod/ImeTracing;
.super Ljava/lang/Object;
.source "ImeTracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    }
.end annotation


# static fields
.field public static final blacklist IME_TRACING_FROM_CLIENT:I = 0x0

.field public static final blacklist IME_TRACING_FROM_IMMS:I = 0x2

.field public static final blacklist IME_TRACING_FROM_IMS:I = 0x1

.field public static final blacklist PROTO_ARG:Ljava/lang/String; = "--proto-com-android-imetracing"

.field static final blacklist TAG:Ljava/lang/String; = "imeTracing"

.field static blacklist sEnabled:Z

.field private static blacklist sInstance:Lcom/android/internal/inputmethod/ImeTracing;


# instance fields
.field protected blacklist mDumpInProgress:Z

.field protected final blacklist mDumpInProgressLock:Ljava/lang/Object;

.field blacklist mService:Lcom/android/internal/view/IInputMethodManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mDumpInProgressLock:Ljava/lang/Object;

    .line 57
    nop

    .line 58
    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 59
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/inputmethod/ImeTracing;
    .locals 3

    .line 69
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    if-nez v0, :cond_1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;-><init>()V

    :goto_0
    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "imeTracing"

    const-string v2, "Exception while creating ImeTracing instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    return-object v0
.end method

.method private static blacklist isSystemProcess()Z
    .locals 1

    .line 211
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
.end method

.method public blacklist isAvailable()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 186
    sget-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return v0
.end method

.method protected blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 215
    const-string v0, "imeTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 220
    :cond_0
    return-void
.end method

.method public blacklist saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 171
    return-void
.end method

.method public blacklist sendToService([BILjava/lang/String;)V
    .locals 1
    .param p1, "protoDump"    # [B
    .param p2, "source"    # I
    .param p3, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->startProtoDump([BILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 179
    sput-boolean p1, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    .line 180
    return-void
.end method

.method public final blacklist startImeTrace()V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start ime trace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imeTracing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public abstract blacklist startTrace(Ljava/io/PrintWriter;)V
.end method

.method public final blacklist stopImeTrace()V
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stop ime trace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imeTracing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public abstract blacklist stopTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
.end method

.method public abstract blacklist triggerManagerServiceDump(Ljava/lang/String;)V
.end method

.method public abstract blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
.end method
