.class public Landroid/filterpacks/imageproc/FlipFilter;
.super Landroid/filterfw/core/Filter;
.source "FlipFilter.java"


# instance fields
.field private blacklist mHorizontal:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "horizontal"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mVertical:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "vertical"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    .line 36
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    .line 39
    const/16 v1, 0x280

    iput v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    .line 43
    iput v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    .line 47
    return-void
.end method

.method private blacklist updateParameters()V
    .locals 6

    .line 108
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 109
    .local v3, "x_origin":F
    :goto_0
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 111
    .local v1, "y_origin":F
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v2

    .line 112
    .local v0, "width":F
    :goto_1
    if-eqz v4, :cond_3

    move v2, v5

    .line 114
    .local v2, "height":F
    :cond_3
    iget-object v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v4, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 115
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 78
    iget-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    .line 81
    :cond_0
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 57
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 61
    packed-switch p2, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 64
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 65
    iput-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 66
    nop

    .line 72
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    .line 73
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    .line 74
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 86
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FlipFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 87
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 90
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 91
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FlipFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 98
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 101
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/FlipFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 104
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 105
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    .line 51
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FlipFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 52
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FlipFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
