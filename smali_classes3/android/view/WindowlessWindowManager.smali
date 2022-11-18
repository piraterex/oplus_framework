.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;,
        Landroid/view/WindowlessWindowManager$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mFocusGrantToken:Landroid/os/IBinder;

.field private final blacklist mHostInputToken:Landroid/os/IBinder;

.field private blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mRealWm:Landroid/view/IWindowSession;

.field final blacklist mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field final blacklist mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mTmpConfig:Landroid/util/MergedConfiguration;

.field private final blacklist mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "c"    # Landroid/content/res/Configuration;
    .param p2, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p3, "hostInputToken"    # Landroid/os/IBinder;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 85
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    .line 87
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 88
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    .line 92
    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    .line 93
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 94
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 95
    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    .line 96
    return-void
.end method

.method private blacklist isInTouchMode()Z
    .locals 3

    .line 243
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowlessWindowManager"

    const-string v2, "Unable to check if the window is in touch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 233
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 236
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .locals 22
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p6, "outInputChannel"    # Landroid/view/InputChannel;
    .param p7, "outInsetsState"    # Landroid/view/InsetsState;
    .param p8, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 153
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v8, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 158
    .local v10, "b":Landroid/view/SurfaceControl$Builder;
    move-object/from16 v7, p1

    invoke-virtual {v8, v7, v10}, Landroid/view/WindowlessWindowManager;->attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V

    .line 159
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 161
    .local v6, "sc":Landroid/view/SurfaceControl;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 164
    :try_start_0
    iget-object v11, v8, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v11, Landroid/view/IWindowSession$Stub;

    if-eqz v0, :cond_0

    .line 165
    new-instance v13, Landroid/view/SurfaceControl;

    const-string v0, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v13, v6, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v15, v8, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, v8, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 165
    move/from16 v12, p4

    move-object/from16 v14, p1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, p6

    invoke-interface/range {v11 .. v21}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v15, v8, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, v8, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 170
    move/from16 v12, p4

    move-object v13, v6

    move-object/from16 v14, p1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, p6

    invoke-interface/range {v11 .. v21}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowlessWindowManager"

    const-string v2, "Failed to grant input to surface: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    .line 180
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v11, v1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object v12, v6

    .end local v6    # "sc":Landroid/view/SurfaceControl;
    .local v12, "sc":Landroid/view/SurfaceControl;
    move-object v6, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/os/IBinder;Landroid/view/IWindow;)V

    .line 181
    .local v1, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, v8, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    const/16 v0, 0xa

    .line 189
    .local v0, "res":I
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowlessWindowManager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    goto :goto_3

    :cond_3
    const/16 v2, 0xa

    :goto_3
    return v2

    .line 183
    .end local v0    # "res":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .locals 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "userId"    # I
    .param p6, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .param p8, "outInsetsState"    # Landroid/view/InsetsState;
    .param p9, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public blacklist addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "insetsState"    # Landroid/view/InsetsState;

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 142
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 143
    return-void
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 418
    return-void
.end method

.method public blacklist clearTouchableRegion(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 372
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 373
    return-void
.end method

.method public blacklist dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 422
    return-void
.end method

.method public blacklist dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 426
    return-void
.end method

.method public blacklist dropForAccessibility(Landroid/view/IWindow;II)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "seqId"    # I

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 380
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 381
    .local v0, "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 384
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    invoke-interface {v0, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    .line 387
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    nop

    .end local v0    # "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    monitor-exit p0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist finishMovingTask(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 480
    return-void
.end method

.method public blacklist generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 529
    return-void
.end method

.method blacklist getFocusGrantToken()Landroid/os/IBinder;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInTouchMode()Z
    .locals 1

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 274
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 275
    .local v0, "s":Landroid/view/WindowlessWindowManager$State;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    return-object v1

    .line 278
    :cond_0
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v1
.end method

.method protected blacklist getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 265
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, 0x0

    return-object v1

    .line 268
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 255
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 256
    const/4 v1, 0x0

    return-object v1

    .line 258
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "callingWindow"    # Landroid/view/IWindow;
    .param p2, "targetInputToken"    # Landroid/os/IBinder;
    .param p3, "grantFocus"    # Z

    .line 524
    return-void
.end method

.method public blacklist grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "hostInputToken"    # Landroid/os/IBinder;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "type"    # I
    .param p8, "focusGrantToken"    # Landroid/os/IBinder;
    .param p9, "inputHandleName"    # Ljava/lang/String;
    .param p10, "outInputChannel"    # Landroid/view/InputChannel;

    .line 509
    return-void
.end method

.method public blacklist onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 462
    return-void
.end method

.method public blacklist outOfMemory(Landroid/view/IWindow;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchX"    # F
    .param p6, "touchY"    # F
    .param p7, "thumbCenterX"    # F
    .param p8, "thumbCenterY"    # F
    .param p9, "data"    # Landroid/content/ClipData;

    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist performHapticFeedback(IZ)Z
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pokeDrawLock(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;

    .line 471
    return-void
.end method

.method public blacklist prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    .line 356
    return-void
.end method

.method public blacklist relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I
    .locals 23
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p10, "outInsetsState"    # Landroid/view/InsetsState;
    .param p11, "outActiveControls"    # [Landroid/view/InsetsSourceControl;
    .param p12, "outSyncSeqIdBundle"    # Landroid/os/Bundle;

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v4, v0

    .line 290
    .local v4, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-eqz v4, :cond_5

    .line 295
    iget-object v12, v4, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 296
    .local v12, "sc":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v13, v0

    .line 298
    .local v13, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v0, 0x0

    .line 299
    .local v0, "attrChanges":I
    if-eqz v2, :cond_0

    .line 300
    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move v14, v0

    goto :goto_0

    .line 299
    :cond_0
    move v14, v0

    .line 302
    .end local v0    # "attrChanges":I
    .local v14, "attrChanges":I
    :goto_0
    iget-object v15, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 304
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez p5, :cond_1

    .line 305
    invoke-direct {v1, v15}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v13, v12, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 306
    const-string v0, "WindowlessWindowManager.relayout"

    move-object/from16 v11, p9

    invoke-virtual {v11, v12, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_1
    move-object/from16 v11, p9

    invoke-virtual {v13, v12}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 309
    invoke-virtual/range {p9 .. p9}, Landroid/view/SurfaceControl;->release()V

    .line 311
    :goto_1
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v9, p8

    invoke-virtual {v9, v0, v0}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 316
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_3

    iget-object v0, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    .line 319
    :try_start_1
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v5, v0, Landroid/view/IWindowSession$Stub;

    if-eqz v5, :cond_2

    .line 320
    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v6, v4, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v7, Landroid/view/SurfaceControl;

    const-string v8, "WindowlessWindowManager.relayout"

    invoke-direct {v7, v12, v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v8, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v10, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v4, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v10

    move-object/from16 v22, v2

    invoke-interface/range {v16 .. v22}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V

    const/4 v2, 0x0

    goto :goto_2

    .line 324
    :cond_2
    iget-object v6, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v7, v4, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v8, v4, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v0

    move-object v0, v8

    move-object v8, v12

    move v9, v2

    const/4 v2, 0x0

    move-object v11, v0

    :try_start_3
    invoke-interface/range {v5 .. v11}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    :goto_2
    goto :goto_4

    .line 327
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    move v2, v10

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    const-string v5, "WindowlessWindowManager"

    const-string v6, "Failed to update surface input channel: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move v2, v10

    .line 332
    :goto_4
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_4

    .line 333
    move-object/from16 v5, p10

    invoke-virtual {v5, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    goto :goto_5

    .line 332
    :cond_4
    move-object/from16 v5, p10

    .line 336
    :goto_5
    return v2

    .line 292
    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .end local v13    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v14    # "attrChanges":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move-object/from16 v5, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    .end local v4    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p10

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method public blacklist remove(Landroid/view/IWindow;)V
    .locals 3
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 217
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v0, :cond_0

    .line 222
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 223
    return-void

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected blacklist removeSurface(Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 227
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 228
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 230
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    return-void

    .line 227
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 414
    return-void
.end method

.method public blacklist reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 503
    .local p2, "restrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 110
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 99
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method public blacklist setInTouchMode(Z)V
    .locals 0
    .param p1, "showFocus"    # Z

    .line 393
    return-void
.end method

.method public blacklist setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableRegion"    # Landroid/graphics/Region;

    .line 367
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 368
    return-void
.end method

.method public blacklist setInsetsState(Landroid/view/InsetsState;)V
    .locals 14
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 541
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    .line 542
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowlessWindowManager$State;

    .line 544
    .local v1, "s":Landroid/view/WindowlessWindowManager$State;
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 546
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 547
    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget-object v5, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const v12, 0x7fffffff

    const/4 v13, -0x1

    move-object v8, p1

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_1

    .line 550
    :catch_0
    move-exception v2

    .line 553
    .end local v1    # "s":Landroid/view/WindowlessWindowManager$State;
    :goto_1
    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method public blacklist setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .locals 0
    .param p1, "iWindow"    # Landroid/view/IWindow;
    .param p2, "callbackInfo"    # Landroid/window/OnBackInvokedCallbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    return-void
.end method

.method public blacklist setRefreshRate(Landroid/view/SurfaceControl;FIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "refreshRate"    # F
    .param p3, "mMSyncScenarioAction"    # I
    .param p4, "mMSyncScenarioType"    # I
    .param p5, "activityName"    # Ljava/lang/String;
    .param p6, "packgeName"    # Ljava/lang/String;

    .line 564
    return-void
.end method

.method public blacklist setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "shouldZoom"    # Z

    .line 439
    return-void
.end method

.method protected blacklist setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 9
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 118
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 122
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    if-nez v0, :cond_0

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    monitor-exit p0

    return-void

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    .line 129
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 131
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v3, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v4, v0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v8, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v2 .. v8}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    monitor-exit p0

    .line 139
    return-void

    .line 138
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 447
    return-void
.end method

.method public blacklist setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xstep"    # F
    .param p5, "ystep"    # F

    .line 431
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 435
    return-void
.end method

.method public blacklist startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    .locals 0
    .param p1, "channelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "privateFlags"    # I
    .param p6, "region"    # Landroid/graphics/Region;

    .line 514
    return-void
.end method

.method public blacklist updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "flags"    # I
    .param p4, "clientWindowFrames"    # Landroid/window/ClientWindowFrames;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I

    .line 352
    return-void
.end method

.method public blacklist updatePointerIcon(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 484
    return-void
.end method

.method public blacklist updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "visibilities"    # Landroid/view/InsetsVisibilities;

    .line 493
    return-void
.end method

.method public blacklist updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 489
    return-void
.end method

.method public blacklist updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "outMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p5, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p6, "outInsetsState"    # Landroid/view/InsetsState;
    .param p7, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 457
    return-void
.end method

.method public blacklist wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;

    .line 443
    return-void
.end method
