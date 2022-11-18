.class public Landroid/media/tv/tuner/filter/AvSettings$Builder;
.super Ljava/lang/Object;
.source "AvSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioStreamType:I

.field private final blacklist mIsAudio:Z

.field private blacklist mIsPassthrough:Z

.field private final blacklist mMainType:I

.field blacklist mUseSecureMemory:Z

.field private blacklist mVideoStreamType:I


# direct methods
.method private constructor blacklist <init>(IZ)V
    .locals 1
    .param p1, "mainType"    # I
    .param p2, "isAudio"    # Z

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    .line 291
    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 292
    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 293
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    .line 296
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    .line 297
    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    .line 298
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLandroid/media/tv/tuner/filter/AvSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/AvSettings$Builder;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/AvSettings;
    .locals 9

    .line 373
    new-instance v8, Landroid/media/tv/tuner/filter/AvSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    iget v4, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    iget v5, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    iget-boolean v6, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/tv/tuner/filter/AvSettings;-><init>(IZZIIZLandroid/media/tv/tuner/filter/AvSettings-IA;)V

    return-object v8
.end method

.method public whitelist setAudioStreamType(I)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .locals 2
    .param p1, "audioStreamType"    # I

    .line 323
    const v0, 0x10001

    const-string v1, "setAudioStreamType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    if-eqz v0, :cond_0

    .line 325
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 328
    :cond_0
    return-object p0
.end method

.method public whitelist setPassthrough(Z)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .locals 0
    .param p1, "isPassthrough"    # Z

    .line 307
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    .line 308
    return-object p0
.end method

.method public whitelist setUseSecureMemory(Z)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .locals 2
    .param p1, "useSecureMemory"    # Z

    .line 361
    const/high16 v0, 0x20000

    const-string v1, "setSecureMemory"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    .line 365
    :cond_0
    return-object p0
.end method

.method public whitelist setVideoStreamType(I)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .locals 2
    .param p1, "videoStreamType"    # I

    .line 343
    const v0, 0x10001

    const-string v1, "setVideoStreamType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    if-nez v0, :cond_0

    .line 345
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 348
    :cond_0
    return-object p0
.end method
