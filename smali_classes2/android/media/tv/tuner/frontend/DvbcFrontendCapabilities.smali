.class public Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbcFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAnnexCap:I

.field private final blacklist mFecCap:J

.field private final blacklist mModulationCap:I


# direct methods
.method private constructor blacklist <init>(IJI)V
    .locals 0
    .param p1, "modulationCap"    # I
    .param p2, "fecCap"    # J
    .param p4, "annexCap"    # I

    .line 32
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 33
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    .line 34
    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    .line 35
    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getAnnexCapability()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()J
    .locals 2

    .line 65
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    return-wide v0
.end method

.method public whitelist getFecCapability()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    return v0
.end method
