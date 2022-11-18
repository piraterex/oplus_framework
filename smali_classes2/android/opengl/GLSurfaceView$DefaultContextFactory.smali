.class Landroid/opengl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private greylist-max-o EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic blacklist this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method private constructor blacklist <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 802
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    const/16 p1, 0x3098

    iput p1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$DefaultContextFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public whitelist createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 806
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 809
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 810
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 809
    :goto_0
    invoke-interface {p1, p2, p3, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1
.end method

.method public whitelist destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 4
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 815
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultContextFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "eglDestroyContex"

    invoke-static {v1, v0}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 822
    :cond_1
    return-void
.end method
