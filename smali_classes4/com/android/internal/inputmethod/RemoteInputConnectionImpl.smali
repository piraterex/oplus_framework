.class public final Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$Dispatching;,
        Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_END_BATCH_EDIT_RETRY:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnectionImpl"


# instance fields
.field private final blacklist mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private final blacklist mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mFinished:Z

.field private final blacklist mH:Landroid/os/Handler;

.field private final blacklist mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mServedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smuseImeTracing()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v0

    return v0
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .param p4, "servedView"    # Landroid/view/View;

    .line 182
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mFinished:Z

    .line 177
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1056
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 183
    iput-object p2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 184
    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    .line 186
    iput-object p3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 188
    return-void
.end method

.method private blacklist dispatch(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1232
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1234
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1238
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "untypedFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 1260
    .local p3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1261
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "untypedFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;[B>;)V"
        }
    .end annotation

    .line 1267
    .local p3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "dumpProtoProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;[B>;"
    move-object v3, p2

    .line 1268
    .local v3, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<TT;>;"
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1283
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 1242
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .local v0, "actualRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 1252
    .end local v0    # "actualRunnable":Ljava/lang/Runnable;
    :cond_0
    move-object v0, p2

    .line 1255
    .restart local v0    # "actualRunnable":Ljava/lang/Runnable;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 1256
    return-void
.end method

.method static synthetic blacklist lambda$deactivate$1(Landroid/view/View;)V
    .locals 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 368
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    .line 370
    invoke-virtual {v1, p0}, Landroid/view/HandwritingInitiator;->onInputConnectionClosed(Landroid/view/View;)V

    .line 372
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$dispatchWithTracing$42(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnection#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1246
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1249
    nop

    .line 1250
    return-void

    .line 1248
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1249
    throw v0
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$13(ILjava/lang/Integer;)[B
    .locals 1
    .param p0, "reqModes"    # I
    .param p1, "result"    # Ljava/lang/Integer;

    .line 536
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getExtractedText$15(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .locals 1
    .param p0, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p1, "flags"    # I
    .param p2, "result"    # Landroid/view/inputmethod/ExtractedText;

    .line 553
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSelectedText$9(ILjava/lang/CharSequence;)[B
    .locals 1
    .param p0, "flags"    # I
    .param p1, "result"    # Ljava/lang/CharSequence;

    .line 491
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSurroundingText$11(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 1
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 518
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getTextAfterCursor$5(IILjava/lang/CharSequence;)[B
    .locals 1
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 447
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getTextBeforeCursor$7(IILjava/lang/CharSequence;)[B
    .locals 1
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 469
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist requestCursorUpdatesInternal(III)Z
    .locals 4
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I
    .param p3, "imeDisplayId"    # I

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 996
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getDisplayId()I

    move-result v2

    if-eq v2, p3, :cond_1

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1001
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->hasVirtualDisplayToScreenMatrix()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1003
    return v1

    .line 1006
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1007
    :catch_0
    move-exception v2

    .line 1009
    .local v2, "ignored":Ljava/lang/AbstractMethodError;
    return v1

    .line 997
    .end local v2    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_2
    :goto_0
    const-string v2, "RemoteInputConnectionImpl"

    const-string/jumbo v3, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return v1
.end method

.method private static blacklist useImeTracing()Z
    .locals 1

    .line 1286
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v0
.end method

.method public blacklist beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 882
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "beginBatchEdit"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method

.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 828
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v1, "clearMetaKeyStates"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 839
    return-void
.end method

.method public blacklist commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 596
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    const-string v1, "commitCompletion"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method

.method public blacklist commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1018
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)V

    const-string v0, "commitContent"

    invoke-direct {p0, v0, p5, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1038
    return-void
.end method

.method public blacklist commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 612
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    const-string v1, "commitCorrection"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 560
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string v1, "commitText"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method public blacklist commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 580
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string v0, "commitTextWithTextAttribute"

    invoke-direct {p0, v0, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method public blacklist deactivate()V
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)V

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 845
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v1, "deleteSurroundingText"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 856
    return-void
.end method

.method public blacklist deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 862
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v1, "deleteSurroundingTextInCodePoints"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method public blacklist dispatchReportFullscreenMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 419
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 397
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    instance-of v1, v1, Landroid/view/inputmethod/DumpableInputConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    .line 404
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    check-cast v1, Landroid/view/inputmethod/DumpableInputConnection;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/inputmethod/DumpableInputConnection;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 407
    :cond_0
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 898
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "endBatchEdit"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public blacklist finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 784
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "finishComposingText"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public blacklist finishComposingTextFromImm()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 756
    .local v0, "currentSessionId":I
    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;I)V

    const-string v2, "finishComposingTextFromImm"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 526
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 536
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 526
    :goto_0
    const-string v2, "getCursorCapsMode"

    invoke-direct {p0, v2, p3, v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 537
    return-void
.end method

.method public blacklist getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 543
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)V

    .line 553
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;-><init>(Landroid/view/inputmethod/ExtractedTextRequest;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 543
    :goto_0
    const-string v2, "getExtractedText"

    invoke-direct {p0, v2, p4, v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 554
    return-void
.end method

.method public blacklist getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "flags"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 476
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 491
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 476
    :goto_0
    const-string v2, "getSelectedText"

    invoke-direct {p0, v2, p3, v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 492
    return-void
.end method

.method public blacklist getServedView()Landroid/view/View;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 498
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    .line 518
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;-><init>(III)V

    goto :goto_0

    .line 519
    :cond_0
    const/4 v0, 0x0

    .line 498
    :goto_0
    const-string v1, "getSurroundingText"

    invoke-direct {p0, v1, p5, v6, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 520
    return-void
.end method

.method public blacklist getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 432
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 447
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 432
    :goto_0
    const-string v2, "getTextAfterCursor"

    invoke-direct {p0, v2, p4, v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 448
    return-void
.end method

.method public blacklist getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 454
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 469
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 454
    :goto_0
    const-string v2, "getTextBeforeCursor"

    invoke-direct {p0, v2, p4, v0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 470
    return-void
.end method

.method public blacklist hasPendingInvalidation()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist isActive()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFinished()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mFinished:Z

    monitor-exit v0

    return v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$beginBatchEdit$33$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 883
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 884
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 887
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 891
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 892
    return-void

    .line 888
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "beginBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method synthetic blacklist lambda$clearMetaKeyStates$30$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 829
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 830
    return-void

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 833
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 838
    return-void

    .line 834
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method synthetic blacklist lambda$commitCompletion$18$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 597
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 601
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 606
    return-void

    .line 602
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitCompletion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method synthetic blacklist lambda$commitContent$40$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 1019
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    .line 1020
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1019
    if-eq v0, v1, :cond_0

    .line 1020
    return-object v2

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1023
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1027
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1032
    :cond_2
    :try_start_0
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1033
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "ignored":Ljava/lang/AbstractMethodError;
    return-object v2

    .line 1028
    .end local v1    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitContent with invalid inputContentInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-object v2

    .line 1024
    :cond_4
    :goto_1
    const-string v3, "commitContent on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-object v2
.end method

.method synthetic blacklist lambda$commitCorrection$19$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 613
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 614
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 617
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 622
    :cond_1
    :try_start_0
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 626
    :goto_0
    return-void

    .line 618
    :cond_2
    :goto_1
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitCorrection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method synthetic blacklist lambda$commitText$16$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 563
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 568
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 573
    return-void

    .line 569
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method synthetic blacklist lambda$commitTextWithTextAttribute$17$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 581
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 582
    return-void

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 585
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 590
    return-void

    .line 586
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method synthetic blacklist lambda$deactivate$2$com-android-internal-inputmethod-RemoteInputConnectionImpl()V
    .locals 6

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    const-string v0, "InputConnection#closeConnection"

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 327
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 332
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v4, :cond_1

    .line 341
    iget-object v5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 342
    :try_start_1
    iput-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 343
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mFinished:Z

    .line 344
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 333
    return-void

    .line 344
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 336
    :cond_1
    :try_start_3
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v5

    .line 341
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 342
    :try_start_4
    iput-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 343
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mFinished:Z

    .line 344
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    nop

    .line 349
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 350
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 354
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_4

    .line 358
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->onInputConnectionClosedInternal()V

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 361
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/HandwritingInitiator;->onInputConnectionClosed(Landroid/view/View;)V

    .line 364
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    goto :goto_1

    .line 365
    :cond_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;

    invoke-direct {v2, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_4
    :goto_1
    return-void

    .line 344
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 341
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 342
    :try_start_6
    iput-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 343
    iput-boolean v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mFinished:Z

    .line 344
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 345
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    throw v4

    .line 344
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method synthetic blacklist lambda$deleteSurroundingText$31$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 846
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 850
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 854
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 855
    return-void

    .line 851
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method synthetic blacklist lambda$deleteSurroundingTextInCodePoints$32$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 863
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 864
    return-void

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 867
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 872
    :cond_1
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception v1

    .line 876
    :goto_0
    return-void

    .line 868
    :cond_2
    :goto_1
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method synthetic blacklist lambda$dispatchReportFullscreenMode$3$com-android-internal-inputmethod-RemoteInputConnectionImpl(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 421
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 425
    return-void

    .line 422
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$dispatchWithTracing$43$com-android-internal-inputmethod-RemoteInputConnectionImpl(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 5
    .param p1, "supplier"    # Ljava/util/function/Supplier;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p3, "dumpProtoProvider"    # Ljava/util/function/Function;
    .param p4, "methodName"    # Ljava/lang/String;

    .line 1271
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    .local v0, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 1276
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1277
    if-eqz p3, :cond_0

    .line 1278
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1279
    .local v1, "icProto":[B
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteInputConnectionImpl#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1282
    .end local v1    # "icProto":[B
    :cond_0
    return-void

    .line 1272
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 1273
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1274
    throw v0
.end method

.method synthetic blacklist lambda$endBatchEdit$34$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 899
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 900
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 903
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 907
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 908
    return-void

    .line 904
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "endBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method synthetic blacklist lambda$finishComposingText$28$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 785
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    return-void

    .line 793
    :cond_0
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 794
    return-void

    .line 796
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 801
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    .line 802
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "finishComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void

    .line 805
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 806
    return-void
.end method

.method synthetic blacklist lambda$finishComposingTextFromImm$27$com-android-internal-inputmethod-RemoteInputConnectionImpl(I)V
    .locals 3
    .param p1, "currentSessionId"    # I

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 766
    return-void

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 773
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    .line 774
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "finishComposingTextFromImm on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void

    .line 777
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 778
    return-void
.end method

.method synthetic blacklist lambda$getCursorCapsMode$12$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I

    .line 527
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 527
    if-eq v0, v1, :cond_0

    .line 528
    return-object v2

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 531
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 535
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 532
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v2
.end method

.method synthetic blacklist lambda$getExtractedText$14$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p3, "flags"    # I

    .line 544
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 545
    return-object v2

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 548
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    return-object v1

    .line 549
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getExtractedText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object v2
.end method

.method synthetic blacklist lambda$getSelectedText$8$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "flags"    # I

    .line 477
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 478
    return-object v2

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 481
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    :try_start_0
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 487
    :catch_0
    move-exception v1

    .line 489
    .local v1, "ignored":Ljava/lang/AbstractMethodError;
    return-object v2

    .line 482
    .end local v1    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getSelectedText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v2
.end method

.method synthetic blacklist lambda$getSurroundingText$10$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I

    .line 499
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 500
    return-object v2

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 503
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 507
    :cond_1
    if-gez p2, :cond_2

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v2

    .line 512
    :cond_2
    if-gez p3, :cond_3

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v2

    .line 517
    :cond_3
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    .line 504
    :cond_4
    :goto_0
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v2
.end method

.method synthetic blacklist lambda$getTextAfterCursor$4$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I

    .line 433
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 434
    return-object v2

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 437
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    if-gez p2, :cond_2

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getTextAfterCursor due to an invalid length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v2

    .line 446
    :cond_2
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 438
    :cond_3
    :goto_0
    const-string v3, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v2
.end method

.method synthetic blacklist lambda$getTextBeforeCursor$6$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I

    .line 455
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 456
    return-object v2

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 459
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    if-gez p2, :cond_2

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getTextBeforeCursor due to an invalid length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v2

    .line 468
    :cond_2
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 460
    :cond_3
    :goto_0
    const-string v3, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-object v2
.end method

.method synthetic blacklist lambda$performContextMenuAction$22$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 665
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 669
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 673
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 674
    return-void

    .line 670
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method synthetic blacklist lambda$performEditorAction$21$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 649
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 653
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 658
    return-void

    .line 654
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method synthetic blacklist lambda$performPrivateCommand$36$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 932
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 933
    return-void

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 936
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 940
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 941
    return-void

    .line 937
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performPrivateCommand on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method synthetic blacklist lambda$performSpellCheck$35$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 915
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 916
    return-void

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 919
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 923
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->performSpellCheck()Z

    .line 924
    return-void

    .line 920
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performSpellCheck on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method

.method synthetic blacklist lambda$requestCursorUpdates$38$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "imeDisplayId"    # I

    .line 970
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 971
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 973
    :cond_0
    invoke-direct {p0, p2, v2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$requestCursorUpdatesFromImm$37$com-android-internal-inputmethod-RemoteInputConnectionImpl(IIII)V
    .locals 1
    .param p1, "currentSessionId"    # I
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I

    .line 958
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 959
    return-void

    .line 961
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    .line 962
    return-void
.end method

.method synthetic blacklist lambda$requestCursorUpdatesWithFilter$39$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I

    .line 984
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 985
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 987
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$scheduleInvalidateInput$0$com-android-internal-inputmethod-RemoteInputConnectionImpl(I)V
    .locals 11
    .param p1, "nextSessionId"    # I

    .line 242
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    return-void

    .line 247
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void

    .line 253
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_2

    .line 300
    iget-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 257
    return-void

    .line 260
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 262
    .local v3, "icClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    nop

    .line 263
    invoke-static {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->contains(Ljava/lang/Class;)Z

    move-result v4

    .line 265
    .local v4, "alwaysTrueEndBatchEditDetected":Z
    if-nez v4, :cond_5

    .line 267
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v5

    .line 268
    .local v5, "supportsBatchEdit":Z
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 269
    if-eqz v5, :cond_5

    .line 271
    const/4 v6, 0x0

    .line 273
    .local v6, "retryCount":I
    :cond_3
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v7

    if-nez v7, :cond_4

    .line 274
    goto :goto_0

    .line 276
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 277
    const/16 v7, 0x10

    if-le v6, v7, :cond_3

    .line 278
    const-string v8, "RemoteInputConnectionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#endBatchEdit() still returns true even after retrying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " times.  Falling back to InputMethodManager#restartInput(View)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v4, 0x1

    .line 283
    invoke-static {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->add(Ljava/lang/Class;)V

    .line 290
    .end local v5    # "supportsBatchEdit":Z
    .end local v6    # "retryCount":I
    :cond_5
    :goto_0
    if-nez v4, :cond_6

    .line 291
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->takeSnapshot()Landroid/view/inputmethod/TextSnapshot;

    move-result-object v5

    .line 292
    .local v5, "textSnapshot":Landroid/view/inputmethod/TextSnapshot;
    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, p0, v5, p1}, Landroid/view/inputmethod/InputMethodManager;->doInvalidateInput(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_6

    .line 300
    iget-object v6, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    return-void

    .line 298
    .end local v5    # "textSnapshot":Landroid/view/inputmethod/TextSnapshot;
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "icClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    .end local v4    # "alwaysTrueEndBatchEditDetected":Z
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    throw v1
.end method

.method synthetic blacklist lambda$sendKeyEvent$29$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 813
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 817
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 822
    return-void

    .line 818
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method synthetic blacklist lambda$setComposingRegion$23$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 681
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 682
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 685
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 690
    :cond_1
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_2
    :goto_1
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method

.method synthetic blacklist lambda$setComposingRegionWithTextAttribute$24$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 702
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 706
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    .line 711
    return-void

    .line 707
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method synthetic blacklist lambda$setComposingText$25$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 719
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 723
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 727
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 728
    return-void

    .line 724
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method

.method synthetic blacklist lambda$setComposingTextWithTextAttribute$26$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 736
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 737
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 740
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 745
    return-void

    .line 741
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method synthetic blacklist lambda$setImeConsumesInput$41$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "imeConsumesInput"    # Z

    .line 1044
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1048
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->setImeConsumesInput(Z)Z

    .line 1053
    return-void

    .line 1049
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setImeConsumesInput on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method

.method synthetic blacklist lambda$setSelection$20$com-android-internal-inputmethod-RemoteInputConnectionImpl(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 633
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 637
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 641
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 642
    return-void

    .line 638
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 664
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v1, "performContextMenuAction"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 648
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v1, "performEditorAction"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public blacklist performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 931
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "performPrivateCommand"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 942
    return-void
.end method

.method public blacklist performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 914
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string/jumbo v1, "performSpellCheck"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method

.method public blacklist requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "imeDisplayId"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 969
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "requestCursorUpdates"

    invoke-direct {p0, v1, p4, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 976
    return-void
.end method

.method public blacklist requestCursorUpdatesFromImm(III)V
    .locals 8
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I
    .param p3, "imeDisplayId"    # I

    .line 956
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 957
    .local v0, "currentSessionId":I
    new-instance v7, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;IIII)V

    const-string/jumbo v1, "requestCursorUpdatesFromImm"

    invoke-direct {p0, v1, v7}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public blacklist requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 983
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    const-string/jumbo v0, "requestCursorUpdates"

    invoke-direct {p0, v0, p5, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 990
    return-void
.end method

.method public blacklist scheduleInvalidateInput()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 240
    .local v0, "nextSessionId":I
    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    .end local v0    # "nextSessionId":I
    :cond_0
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 812
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v1, "sendKeyEvent"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method public blacklist setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 680
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "setComposingRegion"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 695
    return-void
.end method

.method public blacklist setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 701
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo v0, "setComposingRegionWithTextAttribute"

    invoke-direct {p0, v0, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 712
    return-void
.end method

.method public blacklist setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 718
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string/jumbo v1, "setComposingText"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 729
    return-void
.end method

.method public blacklist setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 735
    new-instance v6, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo v0, "setComposingTextWithTextAttribute"

    invoke-direct {p0, v0, v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public blacklist setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "imeConsumesInput"    # Z

    .line 1043
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    const-string/jumbo v1, "setImeConsumesInput"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1054
    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 632
    new-instance v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "setSelection"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnectionImpl{connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mParentInputMethodManager.isActive()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 384
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 385
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    return-object v0
.end method
