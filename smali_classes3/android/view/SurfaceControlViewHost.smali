.class public Landroid/view/SurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlViewHost$SurfacePackage;,
        Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlViewHost"


# instance fields
.field private blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private blacklist mReleased:Z

.field private blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private blacklist mWm:Landroid/view/WindowlessWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "hostToken"    # Landroid/os/IBinder;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 94
    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 305
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 306
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 307
    const-string v1, "SurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 310
    new-instance v0, Landroid/view/WindowlessWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 313
    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-direct {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 316
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 319
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/view/Display;
    .param p3, "wwm"    # Landroid/view/WindowlessWindowManager;

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Z)V

    .line 277
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Z)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/view/Display;
    .param p3, "wwm"    # Landroid/view/WindowlessWindowManager;
    .param p4, "useSfChoreographer"    # Z

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 94
    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 282
    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 283
    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-direct {v0, p1, p2, v1, p4}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Z)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 286
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 289
    return-void
.end method

.method private blacklist addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/view/Display;

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 323
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;Landroid/view/Display;)V

    invoke-static {v1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 329
    return-void
.end method

.method static synthetic blacklist lambda$addConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "d"    # Landroid/view/Display;
    .param p2, "conf"    # Landroid/content/res/Configuration;

    .line 324
    instance-of v0, p0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_0

    .line 325
    move-object v0, p0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 326
    .local v0, "w":Landroid/window/WindowTokenClient;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 328
    .end local v0    # "w":Landroid/window/WindowTokenClient;
    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 336
    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    if-eqz v0, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceControlViewHost finalized without being released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlViewHost"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->die(Z)Z

    .line 342
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 343
    return-void
.end method

.method public blacklist getFocusGrantToken()Landroid/os/IBinder;
    .locals 1

    .line 460
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {v0}, Landroid/view/WindowlessWindowManager;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 5

    .line 353
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string/jumbo v3, "getSurfacePackage"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iget-object v3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 356
    invoke-virtual {v3}, Landroid/view/WindowlessWindowManager;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;Landroid/view/ISurfaceControlViewHost;)V

    .line 354
    return-object v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getView()Landroid/view/View;
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/view/IWindow;
    .locals 1

    .line 401
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    return-object v0
.end method

.method public blacklist getWindowlessWM()Landroid/view/WindowlessWindowManager;
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object v0
.end method

.method public whitelist relayout(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 438
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 441
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 442
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 417
    new-instance v0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    .line 418
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callback"    # Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 426
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 427
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(Z)V

    .line 428
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowlessWindowManager;->setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    .line 429
    return-void
.end method

.method public whitelist release()V
    .locals 3

    .line 451
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->die(Z)Z

    .line 452
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 453
    iput-boolean v1, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 454
    return-void
.end method

.method public whitelist setView(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 372
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 375
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 376
    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 387
    return-void
.end method
