.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static greylist-max-o TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1948
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 1947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/opengl/GLSurfaceView$GLThreadManager-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 0
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    .line 1963
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1964
    return-void
.end method

.method public declared-synchronized greylist-max-o threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 4
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    monitor-enter p0

    .line 1951
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThreadManager;
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->-$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V

    .line 1955
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    monitor-exit p0

    return-void

    .line 1950
    .end local p1    # "thread":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
