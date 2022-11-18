.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$GLThreadManager;,
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final whitelist DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final whitelist DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final greylist-max-o LOG_ATTACH_DETACH:Z

.field private static final greylist-max-o LOG_EGL:Z

.field private static final greylist-max-o LOG_PAUSE_RESUME:Z

.field private static final greylist-max-o LOG_RENDERER:Z

.field private static final greylist-max-o LOG_RENDERER_DRAW_FRAME:Z

.field private static final greylist-max-o LOG_SURFACE:Z

.field private static final greylist-max-o LOG_THREADS:Z

.field public static final whitelist RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final whitelist RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final greylist-max-o sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private greylist-max-o mDebugFlags:I

.field private greylist-max-o mDetached:Z

.field private greylist-max-o mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private greylist-max-o mEGLContextClientVersion:I

.field private greylist-max-o mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private greylist-max-o mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private greylist mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private greylist-max-o mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private greylist-max-o mPreserveEGLContextOnPause:Z

.field private greylist mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final greylist-max-o mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I
    .locals 0

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLConfigChooser(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I
    .locals 0

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLContextFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGLWrapper(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .locals 0

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_EGL()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_EGL:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_PAUSE_RESUME()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_PAUSE_RESUME:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_RENDERER()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_RENDERER:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_RENDERER_DRAW_FRAME()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_RENDERER_DRAW_FRAME:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_SURFACE()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_SURFACE:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_THREADS()Z
    .locals 1

    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_THREADS:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    sget-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 169
    const-string v0, "debug.glsurfaceview.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_ATTACH_DETACH:Z

    .line 171
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_THREADS:Z

    .line 173
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_PAUSE_RESUME:Z

    .line 175
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_SURFACE:Z

    .line 177
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_RENDERER:Z

    .line 179
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/opengl/GLSurfaceView;->LOG_RENDERER_DRAW_FRAME:Z

    .line 181
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_EGL:Z

    .line 1967
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLSurfaceView$GLThreadManager-IA;)V

    sput-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1969
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 226
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 227
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1969
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 235
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 236
    return-void
.end method

.method private greylist-max-o checkRenderThreadState()V
    .locals 2

    .line 1941
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_0

    .line 1945
    return-void

    .line 1942
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o init()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 255
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 263
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 248
    nop

    .line 249
    return-void

    .line 247
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 248
    throw v0
.end method

.method public whitelist getDebugFlags()I
    .locals 1

    .line 300
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public whitelist getPreserveEGLContextOnPause()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public whitelist getRenderMode()I
    .locals 1

    .line 518
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 623
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 624
    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_ATTACH_DETACH:Z

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow reattach ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_3

    .line 628
    const/4 v0, 0x1

    .line 629
    .local v0, "renderMode":I
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 632
    :cond_1
    new-instance v1, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 633
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 634
    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 636
    :cond_2
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 638
    .end local v0    # "renderMode":I
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    .line 639
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 643
    sget-boolean v0, Landroid/opengl/GLSurfaceView;->LOG_ATTACH_DETACH:Z

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "GLSurfaceView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 649
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    .line 650
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 651
    return-void
.end method

.method public whitelist onPause()V
    .locals 1

    .line 591
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 592
    return-void
.end method

.method public whitelist onResume()V
    .locals 1

    .line 604
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 605
    return-void
.end method

.method public whitelist queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 614
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method public whitelist requestRender()V
    .locals 1

    .line 529
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 530
    return-void
.end method

.method public whitelist setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .line 292
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    .line 293
    return-void
.end method

.method public whitelist setEGLConfigChooser(IIIIII)V
    .locals 9
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .line 455
    new-instance v8, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 457
    return-void
.end method

.method public whitelist setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 418
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 419
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 420
    return-void
.end method

.method public whitelist setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .line 437
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 438
    return-void
.end method

.method public whitelist setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 486
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 487
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 488
    return-void
.end method

.method public whitelist setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 387
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 388
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 389
    return-void
.end method

.method public whitelist setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 401
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 402
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 403
    return-void
.end method

.method public whitelist setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 279
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 280
    return-void
.end method

.method public whitelist setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .line 324
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 325
    return-void
.end method

.method public whitelist setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .line 507
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 508
    return-void
.end method

.method public whitelist setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .line 361
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 362
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$DefaultContextFactory-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 368
    :cond_1
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 371
    :cond_2
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 372
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 373
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 374
    return-void
.end method

.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 554
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 555
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 537
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 538
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 546
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 547
    return-void
.end method

.method public whitelist surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    return-void
.end method

.method public whitelist surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "finishDrawing"    # Ljava/lang/Runnable;

    .line 563
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p2}, Landroid/opengl/GLSurfaceView$GLThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    .line 566
    :cond_0
    return-void
.end method
