.class public final Landroid/media/tv/TvTrackInfo$Builder;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAudioChannelCount:I

.field private blacklist mAudioDescription:Z

.field private greylist-max-o mAudioSampleRate:I

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private blacklist mEncoding:Ljava/lang/String;

.field private blacklist mEncrypted:Z

.field private greylist-max-o mExtra:Landroid/os/Bundle;

.field private blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mLanguage:Ljava/lang/String;

.field private blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private greylist-max-o mVideoActiveFormatDescription:B

.field private greylist-max-o mVideoFrameRate:F

.field private greylist-max-o mVideoHeight:I

.field private greylist-max-o mVideoPixelAspectRatio:F

.field private greylist-max-o mVideoWidth:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 464
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    .line 471
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvTrackInfo;
    .locals 22

    .line 729
    move-object/from16 v0, p0

    new-instance v20, Landroid/media/tv/TvTrackInfo;

    move-object/from16 v1, v20

    iget v2, v0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    iget-object v3, v0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/media/tv/TvTrackInfo$Builder;->mEncoding:Ljava/lang/String;

    iget-boolean v7, v0, Landroid/media/tv/TvTrackInfo$Builder;->mEncrypted:Z

    iget v8, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    iget v9, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    iget-boolean v10, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioDescription:Z

    iget-boolean v11, v0, Landroid/media/tv/TvTrackInfo$Builder;->mHardOfHearing:Z

    iget-boolean v12, v0, Landroid/media/tv/TvTrackInfo$Builder;->mSpokenSubtitle:Z

    iget v13, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    iget v14, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    iget v15, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    move-object/from16 v21, v1

    iget v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    move/from16 v16, v1

    iget-byte v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    move/from16 v17, v1

    iget-object v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V

    return-object v20
.end method

.method public whitelist setAudioChannelCount(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioChannelCount"    # I

    .line 536
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 539
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    .line 540
    return-object p0

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioDescription(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioDescription"    # Z

    .line 573
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 576
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioDescription:Z

    .line 577
    return-object p0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioSampleRate(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioSampleRate"    # I

    .line 552
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 555
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    .line 556
    return-object p0

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 493
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 495
    return-object p0
.end method

.method public whitelist setEncoding(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .line 510
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mEncoding:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public whitelist setEncrypted(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "encrypted"    # Z

    .line 524
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mEncrypted:Z

    .line 525
    return-object p0
.end method

.method public whitelist setExtra(Landroid/os/Bundle;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 1
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 717
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    .line 719
    return-object p0
.end method

.method public whitelist setHardOfHearing(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "hardOfHearing"    # Z

    .line 594
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track or a subtitle track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mHardOfHearing:Z

    .line 598
    return-object p0
.end method

.method public whitelist setLanguage(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 481
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    .line 483
    return-object p0
.end method

.method public whitelist setSpokenSubtitle(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "spokenSubtitle"    # Z

    .line 613
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 616
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mSpokenSubtitle:Z

    .line 617
    return-object p0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoActiveFormatDescription(B)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoActiveFormatDescription"    # B

    .line 703
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 706
    iput-byte p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    .line 707
    return-object p0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoFrameRate"    # F

    .line 661
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 664
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    .line 665
    return-object p0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoHeight(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoHeight"    # I

    .line 645
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 648
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    .line 649
    return-object p0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoPixelAspectRatio(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoPixelAspectRatio"    # F

    .line 682
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 685
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 686
    return-object p0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoWidth(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoWidth"    # I

    .line 629
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    .line 633
    return-object p0

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
