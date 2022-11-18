.class public Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
.super Ljava/lang/Object;
.source "FrontendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/FrontendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Atsc3PlpTuningInfo"
.end annotation


# instance fields
.field private final blacklist mIsLocked:Z

.field private final blacklist mPlpId:I

.field private final blacklist mUec:I


# direct methods
.method private constructor blacklist <init>(IZI)V
    .locals 0
    .param p1, "plpId"    # I
    .param p2, "isLocked"    # Z
    .param p3, "uec"    # I

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    .line 1124
    iput-boolean p2, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    .line 1125
    iput p3, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    .line 1126
    return-void
.end method


# virtual methods
.method public whitelist getPlpId()I
    .locals 1

    .line 1132
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    return v0
.end method

.method public whitelist getUec()I
    .locals 1

    .line 1144
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    return v0
.end method

.method public whitelist isLocked()Z
    .locals 1

    .line 1138
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    return v0
.end method
