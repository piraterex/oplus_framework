.class public Landroid/filterpacks/base/FrameSource;
.super Landroid/filterfw/core/Filter;
.source "FrameSource.java"


# instance fields
.field private blacklist mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "format"
    .end annotation
.end field

.field private blacklist mFrame:Landroid/filterfw/core/Frame;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "frame"
    .end annotation
.end field

.field private blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 52
    iget-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v1, "frame"

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 57
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameSource;->closeOutputPort(Ljava/lang/String;)V

    .line 61
    :cond_1
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    .line 47
    iget-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFormat:Landroid/filterfw/core/FrameFormat;

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 48
    return-void
.end method
