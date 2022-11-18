.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;
.source "ImeInsetsSourceConsumer.java"


# instance fields
.field private blacklist mIsHideAnimationRunning:Z

.field private blacklist mIsRequestedVisibleAwaitingControl:Z

.field private blacklist mIsShowRequestedDuringHideAnimation:Z


# direct methods
.method public constructor blacklist <init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .locals 1
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p3, "controller"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    .line 61
    .local p2, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    .line 62
    return-void
.end method

.method private blacklist getImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 186
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 187
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3}, Landroid/view/InsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 188
    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 189
    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 190
    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 192
    return-void
.end method

.method public blacklist hide()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    .line 90
    return-void
.end method

.method blacklist hide(ZI)V
    .locals 1
    .param p1, "animationFinished"    # Z
    .param p2, "animationType"    # I

    .line 94
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->hide()V

    .line 96
    if-eqz p1, :cond_0

    .line 99
    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden()V

    .line 101
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    .line 109
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    .line 111
    return-void
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method blacklist notifyHidden()V
    .locals 4

    .line 142
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;)V

    .line 143
    const-wide/16 v0, 0x8

    const-string v2, "IC.hideRequestFromApi"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 144
    return-void
.end method

.method public blacklist onPerceptible(Z)V
    .locals 2
    .param p1, "perceptible"    # Z

    .line 177
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 178
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 179
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public blacklist onShowRequested()V
    .locals 1

    .line 198
    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    .line 201
    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1
    .param p1, "hasViewFocus"    # Z

    .line 66
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 67
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    .line 68
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    .line 71
    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 76
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    .line 78
    return-void
.end method

.method public blacklist removeSurface()V
    .locals 2

    .line 148
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    .line 152
    :cond_0
    return-void
.end method

.method public blacklist requestShow(Z)I
    .locals 3
    .param p1, "fromIme"    # Z

    .line 121
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 123
    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    .line 128
    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 132
    :goto_0
    return v1

    .line 129
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .locals 2
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 160
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->hide()V

    .line 162
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    .line 165
    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    .line 167
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist show(Z)V
    .locals 0
    .param p1, "fromIme"    # Z

    .line 82
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    .line 83
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    .line 84
    return-void
.end method
