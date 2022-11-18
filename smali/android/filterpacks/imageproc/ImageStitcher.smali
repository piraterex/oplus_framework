.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private blacklist mImageHeight:I

.field private blacklist mImageWidth:I

.field private blacklist mInputHeight:I

.field private blacklist mInputWidth:I

.field private blacklist mOutputFrame:Landroid/filterfw/core/Frame;

.field private blacklist mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mSliceHeight:I

.field private blacklist mSliceIndex:I

.field private blacklist mSliceWidth:I

.field private blacklist mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private blacklist mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 57
    return-void
.end method

.method private blacklist calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 72
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 74
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 77
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 78
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 80
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 81
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 68
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 16
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 90
    move-object/from16 v0, p0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 91
    .local v2, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 94
    .local v3, "format":Landroid/filterfw/core/FrameFormat;
    iget v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v4, :cond_0

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-direct {v0, v3}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    iput-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v4, v5, :cond_3

    .line 98
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v4, v5, :cond_3

    .line 105
    :goto_0
    iget-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v4, :cond_1

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v4

    iput-object v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 110
    :cond_1
    iget v4, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v5, v4

    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 111
    .local v5, "x0":F
    int-to-float v4, v4

    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 113
    .local v4, "y0":F
    iget v6, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int v8, v6, v7

    iget v9, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v8, v9

    .line 114
    .local v8, "outputOffsetX":I
    div-int/2addr v6, v7

    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v6, v7

    .line 116
    .local v6, "outputOffsetY":I
    iget v7, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 117
    .local v7, "outputWidth":F
    iget v9, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 120
    .local v9, "outputHeight":F
    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    iget v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v11, v11

    div-float v11, v7, v11

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v12, v12

    div-float v12, v9, v12

    invoke-virtual {v10, v5, v4, v11, v12}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 124
    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    int-to-float v11, v8

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v13, v12

    div-float/2addr v11, v13

    int-to-float v13, v6

    iget v14, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v15, v14

    div-float/2addr v13, v15

    int-to-float v12, v12

    div-float v12, v7, v12

    int-to-float v14, v14

    div-float v14, v9, v14

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 130
    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v10, v2, v11}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 131
    iget v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 134
    iget v11, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v12, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 135
    iget-object v10, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0, v1, v10}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    iget-object v1, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    const/4 v1, 0x0

    iput v1, v0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 139
    :cond_2
    return-void

    .line 100
    .end local v4    # "y0":F
    .end local v5    # "x0":F
    .end local v6    # "outputOffsetY":I
    .end local v7    # "outputWidth":F
    .end local v8    # "outputOffsetX":I
    .end local v9    # "outputHeight":F
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Image size should not change."

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setupPorts()V
    .locals 2

    .line 61
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
