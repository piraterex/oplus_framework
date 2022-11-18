.class public Landroid/filterpacks/videosrc/SurfaceTextureSource;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceTextureSource"

.field private static final blacklist mLogVerbose:Z

.field private static final blacklist mSourceCoords:[F


# instance fields
.field private blacklist mCloseOnTimeout:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "closeOnTimeout"
    .end annotation
.end field

.field private blacklist mFirstFrame:Z

.field private blacklist mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mFrameTransform:[F

.field private blacklist mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private blacklist mMappedCoords:[F

.field private blacklist mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private blacklist mNewFrameAvailable:Landroid/os/ConditionVariable;

.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private final blacklist mRenderShader:Ljava/lang/String;

.field private blacklist mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "sourceListener"
    .end annotation
.end field

.field private blacklist mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private blacklist mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private blacklist mWaitTimeout:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitTimeout"
    .end annotation
.end field

.field private blacklist mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private blacklist onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNewFrameAvailable(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLogVerbose()Z
    .locals 1

    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    .line 130
    const-string v0, "SurfaceTextureSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    .line 118
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mRenderShader:Ljava/lang/String;

    .line 246
    new-instance v0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;-><init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 134
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 135
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    .line 136
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    .line 137
    return-void
.end method

.method private blacklist createFormats()V
    .locals 3

    .line 147
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 150
    return-void
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 226
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "SurfaceTextureSource closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 228
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 229
    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 230
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 241
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 244
    :cond_1
    return-void
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 169
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "Opening SurfaceTextureSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 173
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 175
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 177
    return-void
.end method

.method protected blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 154
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "Preparing SurfaceTextureSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->createFormats()V

    .line 159
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 164
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 165
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 21
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 181
    move-object/from16 v0, p0

    sget-boolean v1, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    const-string v2, "SurfaceTextureSource"

    if-eqz v1, :cond_0

    const-string v3, "Processing new frame"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    const-string/jumbo v4, "video"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    if-eqz v3, :cond_6

    .line 186
    :cond_1
    iget v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    if-eqz v3, :cond_4

    .line 187
    iget-object v6, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    .line 188
    .local v3, "gotNewFrame":Z
    if-nez v3, :cond_5

    .line 189
    iget-boolean v5, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    if-eqz v5, :cond_3

    .line 192
    if-eqz v1, :cond_2

    const-string v1, "Timeout waiting for a new frame. Closing."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    invoke-virtual {v0, v4}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->closeOutputPort(Ljava/lang/String;)V

    .line 194
    return-void

    .line 190
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Timeout waiting for new frame"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v3    # "gotNewFrame":Z
    :cond_4
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 200
    :cond_5
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 201
    iput-boolean v5, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 204
    :cond_6
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 206
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 207
    iget-object v6, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    const/4 v9, 0x0

    sget-object v10, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 210
    iget-object v12, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    aget v13, v1, v5

    const/4 v2, 0x1

    aget v14, v1, v2

    const/4 v2, 0x4

    aget v15, v1, v2

    const/4 v2, 0x5

    aget v16, v1, v2

    const/16 v2, 0x8

    aget v17, v1, v2

    const/16 v2, 0x9

    aget v18, v1, v2

    const/16 v2, 0xc

    aget v19, v1, v2

    const/16 v2, 0xd

    aget v20, v1, v2

    invoke-virtual/range {v12 .. v20}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 216
    .local v1, "output":Landroid/filterfw/core/Frame;
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 218
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 220
    invoke-virtual {v0, v4, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 221
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 222
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    .line 142
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 144
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 234
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 237
    :cond_0
    return-void
.end method
