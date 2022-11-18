.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field final greylist-max-o mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .line 10389
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 10390
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 10391
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    .line 10392
    return-void
.end method

.method private static greylist-max-o checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 10468
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 10469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 10468
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10470
    :catch_0
    move-exception v0

    .line 10471
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 10509
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10510
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10511
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 10513
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 10452
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10453
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10454
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    .line 10456
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 10540
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10541
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10542
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 10544
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .locals 1

    .line 10460
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10461
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10462
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 10464
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 10529
    if-eqz p6, :cond_0

    .line 10531
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10533
    goto :goto_0

    .line 10532
    :catch_0
    move-exception v0

    .line 10535
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "zoom"    # F
    .param p6, "sync"    # Z

    .line 10518
    if-eqz p6, :cond_0

    .line 10520
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10522
    goto :goto_0

    .line 10521
    :catch_0
    move-exception v0

    .line 10524
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .locals 1

    .line 10556
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10557
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10558
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    .line 10560
    :cond_0
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .line 10477
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10478
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2

    .line 10479
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 10480
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 10481
    const-string v2, "android.permission.DUMP"

    invoke-static {v2}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 10488
    const/4 v2, 0x0

    .line 10490
    .local v2, "clientStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 10491
    invoke-static {v1, p1, p2, v2}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10495
    nop

    .line 10497
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 10495
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 10492
    :catch_0
    move-exception v3

    .line 10493
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10495
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 10497
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 10500
    :goto_0
    goto :goto_3

    .line 10498
    :catch_1
    move-exception v3

    .line 10499
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 10495
    :goto_1
    if-eqz v2, :cond_0

    .line 10497
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 10500
    goto :goto_2

    .line 10498
    :catch_2
    move-exception v4

    .line 10499
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 10502
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v3

    .line 10483
    .end local v2    # "clientStream":Ljava/io/OutputStream;
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10484
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10505
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_3
    return-void
.end method

.method public blacklist hideInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 10431
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10432
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_0

    .line 10433
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 10434
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 10433
    const-string v4, "ViewRootImpl.W#hideInsets"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 10437
    :cond_0
    if-eqz v0, :cond_1

    .line 10438
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mhideInsets(Landroid/view/ViewRootImpl;IZ)V

    .line 10440
    :cond_1
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 1
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 10409
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10410
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10411
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 10413
    :cond_0
    return-void
.end method

.method public greylist-max-o moved(II)V
    .locals 1
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 10444
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10445
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10446
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    .line 10448
    :cond_0
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 10564
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10565
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10566
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 10568
    :cond_0
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 10572
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10573
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10574
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 10576
    :cond_0
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .locals 12
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "reportDraw"    # Z
    .param p3, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "forceLayout"    # Z
    .param p6, "alwaysConsumeSystemBars"    # Z
    .param p7, "displayId"    # I
    .param p8, "syncSeqId"    # I
    .param p9, "resizeMode"    # I

    .line 10399
    move-object v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 10400
    .local v1, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 10401
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    .line 10404
    :cond_0
    return-void
.end method

.method public blacklist showInsets(IZ)V
    .locals 5
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 10417
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10418
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_0

    .line 10419
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 10420
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 10419
    const-string v4, "ViewRootImpl.W#showInsets"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 10423
    :cond_0
    if-eqz v0, :cond_1

    .line 10424
    invoke-static {v0, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mshowInsets(Landroid/view/ViewRootImpl;IZ)V

    .line 10426
    :cond_1
    return-void
.end method

.method public greylist-max-o updatePointerIcon(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 10548
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 10549
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 10550
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->updatePointerIcon(FF)V

    .line 10552
    :cond_0
    return-void
.end method
