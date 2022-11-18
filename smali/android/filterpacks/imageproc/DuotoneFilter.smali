.class public Landroid/filterpacks/imageproc/DuotoneFilter;
.super Landroid/filterfw/core/Filter;
.source "DuotoneFilter.java"


# instance fields
.field private final blacklist mDuotoneShader:Ljava/lang/String;

.field private blacklist mFirstColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "first_color"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mSecondColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "second_color"
    .end annotation
.end field

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 31
    const/high16 v0, -0x10000

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 34
    const/16 v0, -0x100

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 37
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 43
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mDuotoneShader:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private blacklist updateParameters()V
    .locals 7

    .line 112
    const/4 v0, 0x3

    new-array v1, v0, [F

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 113
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 114
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v6, 0x2

    aput v2, v1, v6

    .line 115
    .local v1, "first":[F
    new-array v0, v0, [F

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v4

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 116
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v5

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 117
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v6

    .line 119
    .local v0, "second":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "first"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "second"

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 68
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 72
    packed-switch p2, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Duotone does not support frames of target "

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

    .line 74
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 75
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 76
    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 77
    nop

    .line 83
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 84
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 89
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DuotoneFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 90
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 93
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 96
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 97
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/DuotoneFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 99
    :cond_1
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DuotoneFilter;->updateParameters()V

    .line 102
    iget-object v4, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 105
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/DuotoneFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 108
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 109
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    .line 62
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DuotoneFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/DuotoneFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
