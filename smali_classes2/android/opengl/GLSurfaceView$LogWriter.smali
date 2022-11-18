.class Landroid/opengl/GLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private greylist-max-o mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 1907
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o flushBuilder()V
    .locals 3

    .line 1930
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1931
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1934
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 1910
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1911
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 0

    .line 1914
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1915
    return-void
.end method

.method public whitelist test-api write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 1918
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1919
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1920
    .local v1, "c":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1921
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    goto :goto_1

    .line 1924
    :cond_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1918
    .end local v1    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1927
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
