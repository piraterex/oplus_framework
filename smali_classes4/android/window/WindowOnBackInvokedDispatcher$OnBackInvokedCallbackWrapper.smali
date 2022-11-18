.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 225
    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .locals 2

    .line 273
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 274
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    instance-of v1, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    goto :goto_0

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 274
    :goto_0
    return-object v1
.end method


# virtual methods
.method synthetic blacklist lambda$onBackCancelled$2$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 1

    .line 252
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 253
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 256
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBackInvoked$3$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 1

    .line 262
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 263
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    if-nez v0, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    invoke-interface {v0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 268
    return-void
.end method

.method synthetic blacklist lambda$onBackProgressed$1$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper(Landroid/window/BackEvent;)V
    .locals 1
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 242
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 243
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    .line 246
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBackStarted$0$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 1

    .line 232
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 233
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackStarted()V

    .line 236
    :cond_0
    return-void
.end method

.method public blacklist onBackCancelled()V
    .locals 2

    .line 251
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method public blacklist onBackInvoked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 241
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public blacklist onBackStarted()V
    .locals 2

    .line 231
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method
