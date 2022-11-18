.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-p CANCEL:I = 0x44

.field private static final greylist-max-o DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final greylist-max-o DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final greylist-max-o DISMISS:I = 0x43

.field private static final greylist-max-o SHOW:I = 0x45

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionMode:Landroid/view/ActionMode;

.field private greylist-max-o mActionModeTypeStarting:I

.field private greylist-max-o mCancelAndDismissTaken:Ljava/lang/String;

.field private greylist mCancelMessage:Landroid/os/Message;

.field protected greylist-max-o mCancelable:Z

.field private greylist-max-o mCanceled:Z

.field final greylist mContext:Landroid/content/Context;

.field private greylist-max-o mCreated:Z

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field public final blacklist mDialogExt:Landroid/app/IDialogExt;

.field private final greylist-max-o mDismissAction:Ljava/lang/Runnable;

.field private greylist mDismissMessage:Landroid/os/Message;

.field private blacklist mDismissOverride:Ljava/lang/Runnable;

.field private final greylist-max-p mHandler:Landroid/os/Handler;

.field private final greylist mListenersHandler:Landroid/os/Handler;

.field private greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private greylist mOwnerActivity:Landroid/app/Activity;

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist mShowMessage:Landroid/os/Message;

.field private greylist mShowing:Z

.field final greylist mWindow:Landroid/view/Window;

.field private final greylist-max-o mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 186
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 205
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    .line 142
    iput-boolean v1, p0, Landroid/app/Dialog;->mShowing:Z

    .line 144
    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 146
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 161
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 163
    new-instance v1, Landroid/app/Dialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 172
    const-class v1, Landroid/app/IDialogExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IDialogExt;

    iput-object v1, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    .line 209
    if-eqz p3, :cond_1

    .line 210
    if-nez p2, :cond_0

    .line 211
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 212
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 213
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 215
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 217
    :cond_1
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 220
    :goto_0
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 222
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 224
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 225
    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 226
    new-instance v2, Landroid/app/Dialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 232
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 234
    new-instance v0, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v0, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 251
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 252
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 253
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 254
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 245
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 246
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 247
    return-void
.end method

.method private greylist-max-o getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .line 1267
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1268
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1269
    .local v1, "context":Landroid/content/Context;
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1270
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1271
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1273
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 1274
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    .line 1275
    :cond_1
    nop

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 1278
    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method private greylist-max-o sendDismissMessage()V
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 446
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    :cond_0
    return-void
.end method

.method private greylist-max-o sendShowMessage()V
    .locals 1

    .line 451
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 453
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 656
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    return-void
.end method

.method public whitelist cancel()V
    .locals 2

    .line 1375
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1376
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1378
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1381
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .locals 2

    .line 1125
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 1128
    :cond_0
    return-void
.end method

.method public whitelist create()V
    .locals 1

    .line 314
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 317
    :cond_0
    return-void
.end method

.method public whitelist dismiss()V
    .locals 2

    .line 398
    iget-object v0, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 400
    return-void

    .line 403
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 404
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :goto_0
    return-void
.end method

.method greylist dismissDialog()V
    .locals 5

    .line 412
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 416
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    const-string v1, "Dialog"

    if-eqz v0, :cond_1

    .line 417
    const-string v0, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 422
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 432
    :goto_0
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 434
    :cond_2
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 435
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 436
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 437
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 439
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 440
    goto :goto_1

    .line 431
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 426
    :catch_0
    move-exception v3

    .line 427
    .local v3, "exce":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "dismissDialog failed!"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    nop

    .end local v3    # "exce":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 432
    goto :goto_0

    .line 441
    :goto_1
    return-void

    .line 431
    :goto_2
    iget-object v3, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    .line 432
    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 434
    :cond_3
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 435
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 436
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 437
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 439
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 440
    throw v1

    .line 413
    :cond_4
    :goto_3
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 996
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 909
    iget-object v0, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    const-string v1, "Dialog"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-interface {v0, p0, v3, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle Key in mOnKeyListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, p1, v3}, Landroid/app/IDialogExt;->logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V

    .line 914
    return v2

    .line 916
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    const-string v3, "Handle Key in viewtree"

    invoke-interface {v0, v2, v1, p1, v3}, Landroid/app/IDialogExt;->logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V

    .line 921
    return v2

    .line 925
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle Key in self "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, p1, v3}, Landroid/app/IDialogExt;->logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 927
    :goto_0
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 942
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const/4 v0, 0x1

    return v0

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 460
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 464
    :cond_0
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1004
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1007
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1008
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1010
    .local v1, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1012
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 960
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    const/4 v0, 0x1

    return v0

    .line 963
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 978
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, 0x1

    return v0

    .line 981
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 567
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1342
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 1

    .line 1537
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .line 1216
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .locals 1

    .line 1498
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist hide()V
    .locals 2

    .line 385
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 386
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    return-void
.end method

.method public whitelist invalidateOptionsMenu()V
    .locals 2

    .line 1134
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 1137
    :cond_0
    return-void
.end method

.method public whitelist isShowing()Z
    .locals 2

    .line 304
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method synthetic blacklist lambda$new$0$android-app-Dialog()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 230
    :cond_0
    return-void
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1258
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1259
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1261
    :cond_0
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1246
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1247
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 886
    return-void
.end method

.method public whitelist onBackPressed()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent onBackPressed, cancelable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/Dialog;->mCancelable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 787
    :cond_0
    return-void
.end method

.method public whitelist onContentChanged()V
    .locals 0

    .line 878
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1178
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 475
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1144
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1084
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1028
    if-nez p1, :cond_0

    .line 1029
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1032
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 1020
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 890
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 695
    iget-object v0, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    const/4 v1, 0x2

    const-string v2, "Dialog"

    const-string v3, "dispatchKeyEvent onKeyDown ev="

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/app/IDialogExt;->logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V

    .line 697
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 727
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    .line 728
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 730
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will call onBackPressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 736
    const/4 v0, 0x1

    return v0

    .line 738
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1051
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1052
    iget-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1054
    :cond_0
    return v0
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1110
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1070
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1071
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1073
    :cond_0
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 1040
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1041
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1043
    :cond_1
    return v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 533
    const-string v0, "android:dialogHierarchy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 534
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 539
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 540
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 543
    :cond_1
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/app/Dialog;->mShowing:Z

    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:dialogHierarchy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 519
    :cond_0
    return-object v0
.end method

.method public whitelist onSearchRequested()Z
    .locals 8

    .line 1194
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1195
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1198
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v7

    .line 1199
    .local v7, "appName":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1200
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1201
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1202
    const/4 v1, 0x1

    return v1

    .line 1204
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 1185
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1186
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected whitelist onStart()V
    .locals 3

    .line 481
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 483
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    new-instance v0, Landroid/app/Dialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 486
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 490
    :cond_1
    return-void
.end method

.method protected whitelist onStop()V
    .locals 2

    .line 496
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 500
    :cond_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 814
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 816
    const/4 v0, 0x1

    return v0

    .line 819
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 871
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 872
    iget-object v1, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    :cond_0
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .locals 0
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 895
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 896
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 882
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1221
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v1, :cond_0

    .line 1222
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1230
    const/4 v0, 0x0

    :try_start_0
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1231
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1231
    return-object v1

    .line 1233
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1234
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1165
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .locals 3

    .line 1116
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 1119
    :cond_0
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1150
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1151
    return-void
.end method

.method public final whitelist requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 1306
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 608
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 612
    return-object v0

    .line 610
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1413
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1414
    return-void
.end method

.method public whitelist setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1350
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1351
    return-void
.end method

.method public whitelist setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 1362
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_0

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1366
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1367
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 622
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 623
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 633
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 634
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 645
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    return-void
.end method

.method public whitelist setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1450
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1451
    return-void
.end method

.method public blacklist setDismissOverride(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "override"    # Ljava/lang/Runnable;

    .line 1465
    iput-object p1, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    .line 1466
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1330
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1331
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1338
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1339
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1314
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1315
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1322
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1323
    return-void
.end method

.method public whitelist setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 1395
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1400
    if-eqz p1, :cond_0

    .line 1401
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0

    .line 1403
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1405
    :goto_0
    return-void

    .line 1396
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1421
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1426
    if-eqz p1, :cond_0

    .line 1427
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0

    .line 1429
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1431
    :goto_0
    return-void

    .line 1422
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 1505
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1506
    return-void
.end method

.method public whitelist setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 1438
    if-eqz p1, :cond_0

    .line 1439
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0

    .line 1441
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1443
    :goto_0
    return-void
.end method

.method public final whitelist setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 283
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 285
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 286
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .line 676
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 665
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 667
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 1491
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1492
    return-void
.end method

.method public whitelist show()V
    .locals 4

    .line 326
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_1
    return-void

    .line 336
    :cond_2
    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 338
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_3

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 344
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 348
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 351
    iget-object v1, p0, Landroid/app/Dialog;->mDialogExt:Landroid/app/IDialogExt;

    const/4 v3, 0x2

    invoke-interface {v1, v0, v3}, Landroid/app/IDialogExt;->changeDarkAlgorithmType(Landroid/view/View;I)V

    .line 354
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 356
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 357
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 358
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 361
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 362
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 363
    .local v1, "restoreSoftInputMode":Z
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_5

    .line 365
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 367
    const/4 v1, 0x1

    .line 370
    :cond_5
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    if-eqz v1, :cond_6

    .line 372
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 376
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 378
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 379
    return-void
.end method

.method public greylist-max-o takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1471
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1472
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    goto :goto_0

    .line 1473
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1477
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1478
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1479
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1481
    const/4 v0, 0x1

    return v0

    .line 1474
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .line 1291
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1292
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1158
    return-void
.end method
