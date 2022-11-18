.class public final Landroid/media/metrics/PlaybackMetrics;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackMetrics$Builder;,
        Landroid/media/metrics/PlaybackMetrics$ContentType;,
        Landroid/media/metrics/PlaybackMetrics$DrmType;,
        Landroid/media/metrics/PlaybackMetrics$PlaybackType;,
        Landroid/media/metrics/PlaybackMetrics$StreamType;,
        Landroid/media/metrics/PlaybackMetrics$StreamSource;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_AD:I = 0x2

.field public static final whitelist CONTENT_TYPE_MAIN:I = 0x1

.field public static final whitelist CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DRM_TYPE_CLEARKEY:I = 0x6

.field public static final whitelist DRM_TYPE_NONE:I = 0x0

.field public static final whitelist DRM_TYPE_OTHER:I = 0x1

.field public static final whitelist DRM_TYPE_PLAY_READY:I = 0x2

.field public static final whitelist DRM_TYPE_WIDEVINE_L1:I = 0x3

.field public static final whitelist DRM_TYPE_WIDEVINE_L3:I = 0x4

.field public static final whitelist DRM_TYPE_WV_L3_FALLBACK:I = 0x5

.field public static final whitelist PLAYBACK_TYPE_LIVE:I = 0x2

.field public static final whitelist PLAYBACK_TYPE_OTHER:I = 0x3

.field public static final whitelist PLAYBACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_VOD:I = 0x1

.field public static final whitelist STREAM_SOURCE_DEVICE:I = 0x2

.field public static final whitelist STREAM_SOURCE_MIXED:I = 0x3

.field public static final whitelist STREAM_SOURCE_NETWORK:I = 0x1

.field public static final whitelist STREAM_SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist STREAM_TYPE_DASH:I = 0x3

.field public static final whitelist STREAM_TYPE_HLS:I = 0x4

.field public static final whitelist STREAM_TYPE_OTHER:I = 0x1

.field public static final whitelist STREAM_TYPE_PROGRESSIVE:I = 0x2

.field public static final whitelist STREAM_TYPE_SS:I = 0x5

.field public static final whitelist STREAM_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAudioUnderrunCount:I

.field private final blacklist mContentType:I

.field private final blacklist mDrmSessionId:[B

.field private final blacklist mDrmType:I

.field private final blacklist mExperimentIds:[J

.field private final blacklist mLocalBytesRead:J

.field private final blacklist mMediaDurationMillis:J

.field private final blacklist mMetricsBundle:Landroid/os/Bundle;

.field private final blacklist mNetworkBytesRead:J

.field private final blacklist mNetworkTransferDurationMillis:J

.field private final blacklist mPlaybackType:I

.field private final blacklist mPlayerName:Ljava/lang/String;

.field private final blacklist mPlayerVersion:Ljava/lang/String;

.field private final blacklist mStreamSource:I

.field private final blacklist mStreamType:I

.field private final blacklist mVideoFramesDropped:I

.field private final blacklist mVideoFramesPlayed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 484
    new-instance v0, Landroid/media/metrics/PlaybackMetrics$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V
    .locals 16
    .param p1, "mediaDurationMillis"    # J
    .param p3, "streamSource"    # I
    .param p4, "streamType"    # I
    .param p5, "playbackType"    # I
    .param p6, "drmType"    # I
    .param p7, "contentType"    # I
    .param p8, "playerName"    # Ljava/lang/String;
    .param p9, "playerVersion"    # Ljava/lang/String;
    .param p10, "experimentIds"    # [J
    .param p11, "videoFramesPlayed"    # I
    .param p12, "videoFramesDropped"    # I
    .param p13, "audioUnderrunCount"    # I
    .param p14, "networkBytesRead"    # J
    .param p16, "localBytesRead"    # J
    .param p18, "networkTransferDurationMillis"    # J
    .param p20, "drmSessionId"    # [B
    .param p21, "extras"    # Landroid/os/Bundle;

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    .line 195
    move/from16 v4, p3

    iput v4, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    .line 196
    move/from16 v5, p4

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    .line 197
    move/from16 v6, p5

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    .line 198
    move/from16 v7, p6

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 199
    move/from16 v8, p7

    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    .line 200
    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 201
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 202
    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 203
    const-class v11, Landroid/annotation/NonNull;

    const/4 v12, 0x0

    invoke-static {v11, v12, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    move/from16 v11, p11

    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    .line 205
    move/from16 v12, p12

    iput v12, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    .line 206
    move/from16 v13, p13

    iput v13, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    .line 207
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    .line 208
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    .line 209
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    .line 210
    move-object/from16 v3, p20

    iput-object v3, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 211
    invoke-virtual/range {p21 .. p21}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    .line 212
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 27
    .param p1, "in"    # Landroid/os/Parcel;

    .line 442
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 444
    .local v1, "flg":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 445
    .local v3, "mediaDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 446
    .local v5, "streamSource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 447
    .local v6, "streamType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 448
    .local v7, "playbackType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 449
    .local v8, "drmType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 450
    .local v9, "contentType":I
    const-wide/16 v10, 0x80

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, "playerName":Ljava/lang/String;
    :goto_0
    const-wide/16 v14, 0x100

    and-long/2addr v14, v1

    cmp-long v12, v14, v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 452
    .local v12, "playerVersion":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v13

    .line 453
    .local v13, "experimentIds":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 454
    .local v14, "videoFramesPlayed":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 455
    .local v15, "videoFramesDropped":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 456
    .local v11, "audioUnderrunCount":I
    move-wide/from16 v16, v1

    .end local v1    # "flg":J
    .local v16, "flg":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 457
    .local v1, "networkBytesRead":J
    move-wide/from16 v18, v1

    .end local v1    # "networkBytesRead":J
    .local v18, "networkBytesRead":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 458
    .local v1, "localBytesRead":J
    move-wide/from16 v20, v1

    .end local v1    # "localBytesRead":J
    .local v20, "localBytesRead":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 459
    .local v1, "networkTransferDurationMillis":J
    move-wide/from16 v22, v1

    .end local v1    # "networkTransferDurationMillis":J
    .local v22, "networkTransferDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 460
    .local v1, "drmSessionIdLen":I
    new-array v2, v1, [B

    .line 461
    .local v2, "drmSessionId":[B
    move/from16 v24, v1

    move-object/from16 v1, p1

    .end local v1    # "drmSessionIdLen":I
    .local v24, "drmSessionIdLen":I
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 464
    .local v1, "extras":Landroid/os/Bundle;
    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    .line 465
    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    .line 466
    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    .line 467
    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    .line 468
    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 469
    iput v9, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    .line 470
    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 471
    iput-object v12, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 472
    iput-object v13, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 473
    move-wide/from16 v25, v3

    .end local v3    # "mediaDurationMillis":J
    .local v25, "mediaDurationMillis":J
    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 474
    iput v14, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    .line 475
    iput v15, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    .line 476
    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    .line 477
    move-wide/from16 v3, v18

    .end local v18    # "networkBytesRead":J
    .local v3, "networkBytesRead":J
    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    .line 478
    move-wide/from16 v3, v20

    .end local v20    # "localBytesRead":J
    .local v3, "localBytesRead":J
    .restart local v18    # "networkBytesRead":J
    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    .line 479
    move-wide/from16 v3, v22

    .end local v22    # "networkTransferDurationMillis":J
    .local v3, "networkTransferDurationMillis":J
    .restart local v20    # "localBytesRead":J
    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    .line 480
    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 481
    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 381
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 382
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 383
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    .line 384
    .local v2, "that":Landroid/media/metrics/PlaybackMetrics;
    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    .line 390
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    .line 391
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 392
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 399
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 384
    :goto_0
    return v0

    .line 382
    .end local v2    # "that":Landroid/media/metrics/PlaybackMetrics;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioUnderrunCount()I
    .locals 1

    .line 310
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    return v0
.end method

.method public whitelist getContentType()I
    .locals 1

    .line 262
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    return v0
.end method

.method public whitelist getDrmSessionId()[B
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    return-object v0
.end method

.method public whitelist getDrmType()I
    .locals 1

    .line 254
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    return v0
.end method

.method public whitelist getExperimentIds()[J
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalBytesRead()J
    .locals 2

    .line 327
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    return-wide v0
.end method

.method public whitelist getMediaDurationMillis()J
    .locals 2

    .line 221
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkBytesRead()J
    .locals 2

    .line 319
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    return-wide v0
.end method

.method public whitelist getNetworkTransferDurationMillis()J
    .locals 2

    .line 337
    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    return-wide v0
.end method

.method public whitelist getPlaybackType()I
    .locals 1

    .line 246
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPlayerName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPlayerVersion()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamSource()I
    .locals 1

    .line 229
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    return v0
.end method

.method public whitelist getStreamType()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    return v0
.end method

.method public whitelist getVideoFramesDropped()I
    .locals 1

    .line 301
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    return v0
.end method

.method public whitelist getVideoFramesPlayed()I
    .locals 1

    .line 292
    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 404
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 404
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackMetrics { mediaDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experimentIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    .line 368
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesPlayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesDropped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioUnderrunCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkTransferDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "drmSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    .line 375
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 412
    const-wide/16 v0, 0x0

    .line 413
    .local v0, "flg":J
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    .line 414
    :cond_0
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 415
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 416
    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    :cond_2
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    :cond_3
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 425
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 433
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 434
    return-void
.end method
