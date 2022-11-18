.class public final Landroid/view/ImeFocusController;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ImeFocusController"


# instance fields
.field private blacklist mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

.field private blacklist mHasImeFocus:Z

.field private blacklist mNextServedView:Landroid/view/View;

.field private blacklist mServedView:Landroid/view/View;

.field private final blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ImeFocusController;->DEBUG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 57
    iput-object p1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 58
    return-void
.end method

.method private blacklist getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .locals 2

    .line 62
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-object v0
.end method

.method private static blacklist isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 299
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist checkFocus(ZZ)Z
    .locals 7
    .param p1, "forceNewFocus"    # Z
    .param p2, "startInput"    # Z

    .line 170
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v6

    .line 171
    .local v6, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v6, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    sget-boolean v0, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFocus: view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " next="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " force="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "<none>"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v2, "ImeFocusController"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 183
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 184
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->closeCurrentIme()V

    .line 185
    return v1

    .line 187
    :cond_3
    iput-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 188
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishComposingText()V

    .line 190
    if-eqz p2, :cond_4

    .line 191
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInput(ILandroid/view/View;III)Z

    .line 194
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_5
    :goto_1
    return v1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 362
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 363
    .local v0, "token":J
    iget-boolean v2, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 364
    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 365
    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 366
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 367
    return-void
.end method

.method public blacklist getNextServedView()Landroid/view/View;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getServedView()Landroid/view/View;
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasImeFocus()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return v0
.end method

.method public blacklist onInteractiveChanged(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .line 281
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 282
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    if-eqz p1, :cond_2

    .line 286
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 288
    .end local v1    # "focusedView":Landroid/view/View;
    goto :goto_1

    .line 289
    :cond_2
    iget-object v1, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    invoke-interface {v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInputAndReportToIme()V

    .line 291
    :goto_1
    return-void
.end method

.method blacklist onMovedToDisplay()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 77
    return-void
.end method

.method blacklist onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 138
    if-eqz p2, :cond_7

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_7

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 142
    .local v0, "viewForWindowFocus":Landroid/view/View;
    :goto_0
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    const-string v2, "ImeFocusController"

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " softInputMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 144
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    const/4 v1, 0x0

    .line 149
    .local v1, "forceFocus":Z
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v3

    .line 150
    .local v3, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isRestartOnNextWindowFocus(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    sget-boolean v5, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Restarting due to isRestartOnNextWindowFocus as true"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    const/4 v1, 0x1

    .line 156
    :cond_4
    invoke-virtual {p0, v0, v4}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 160
    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 161
    .local v2, "nextFocusIsServedView":Z
    if-eqz v2, :cond_6

    invoke-interface {v3, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->hasActiveConnection(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 162
    const/4 v1, 0x1

    .line 165
    :cond_6
    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v3, v0, v4, v5, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V

    .line 167
    return-void

    .line 139
    .end local v0    # "viewForWindowFocus":Landroid/view/View;
    .end local v1    # "forceFocus":Z
    .end local v2    # "nextFocusIsServedView":Z
    .end local v3    # "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    :cond_7
    :goto_2
    return-void
.end method

.method blacklist onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 104
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 112
    :cond_1
    sget-boolean v0, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreWindowFocus hasWindowFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mViewRootImpl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeFocusController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return-void

    .line 105
    :cond_3
    :goto_0
    return-void
.end method

.method blacklist onProcessImeInputStage(Ljava/lang/Object;Landroid/view/InputEvent;Landroid/view/WindowManager$LayoutParams;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;)I
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 305
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 309
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 310
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1

    .line 311
    return v1

    .line 313
    :cond_1
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p2, p1, p4, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    return v1

    .line 306
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return v1
.end method

.method blacklist onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/ImeFocusController;->updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v0

    .line 82
    .local v0, "hasImeFocus":Z
    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-ne v0, v1, :cond_1

    .line 86
    return-void

    .line 88
    :cond_1
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 91
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTraversal hasImeFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeFocusController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v1, :cond_3

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/view/ImeFocusController;->onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V

    .line 97
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Landroid/view/ImeFocusController;->onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V

    .line 100
    :cond_3
    return-void

    .line 83
    :cond_4
    :goto_0
    return-void
.end method

.method blacklist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 244
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 251
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 253
    :cond_2
    return-void
.end method

.method blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 199
    const-string v0, "ImeFocusController"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 208
    :cond_0
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChanged return, ViewRootImpl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 227
    :cond_3
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChanged, view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4
    if-eqz p2, :cond_5

    .line 237
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 239
    :cond_5
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 240
    return-void

    .line 220
    :cond_6
    :goto_0
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChanged return, hasImeFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_7
    return-void

    .line 202
    :cond_8
    :goto_1
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewFocusChanged return, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_9
    return-void
.end method

.method blacklist onWindowDismissed()V
    .locals 3

    .line 257
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 258
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 264
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 265
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 268
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 269
    const-string v1, "ImeFocusController"

    const-string/jumbo v2, "onWindowDismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    return-void
.end method

.method public blacklist setNextServedView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 350
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 351
    return-void
.end method

.method public blacklist setServedView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 346
    iput-object p1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 347
    return-void
.end method

.method blacklist updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z
    .locals 3
    .param p1, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "force"    # Z

    .line 121
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    .line 123
    .local v0, "hasImeFocus":Z
    if-eqz p2, :cond_0

    .line 124
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 127
    sget-boolean v1, Landroid/view/ImeFocusController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeFocusable hasImeFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeFocusController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return v0
.end method
