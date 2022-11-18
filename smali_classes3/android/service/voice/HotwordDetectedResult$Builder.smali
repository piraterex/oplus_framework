.class public final Landroid/service/voice/HotwordDetectedResult$Builder;
.super Ljava/lang/Object;
.source "HotwordDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannel:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private blacklist mPersonalizedScore:I

.field private blacklist mScore:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 686
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 877
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 881
    return-void

    .line 878
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/HotwordDetectedResult;
    .locals 12

    .line 829
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 830
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 832
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 833
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 835
    :cond_0
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 836
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 838
    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    const/4 v5, -0x1

    if-nez v4, :cond_2

    .line 839
    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 841
    :cond_2
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v4, v6, v2

    const/4 v6, 0x0

    if-nez v4, :cond_3

    .line 842
    iput v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 844
    :cond_3
    const-wide/16 v7, 0x10

    and-long/2addr v7, v0

    cmp-long v4, v7, v2

    if-nez v4, :cond_4

    .line 845
    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 847
    :cond_4
    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_5

    .line 848
    iput-boolean v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 850
    :cond_5
    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 851
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 853
    :cond_6
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 854
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultPersonalizedScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 856
    :cond_7
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 857
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultHotwordPhraseId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 859
    :cond_8
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 860
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 862
    :cond_9
    new-instance v0, Landroid/service/voice/HotwordDetectedResult;

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    iget v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    iget v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    iget-boolean v7, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    iget v8, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    iget v9, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    iget v10, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    iget-object v11, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/service/voice/HotwordDetectedResult;-><init>(ILandroid/media/MediaSyncEvent;IIIZIIILandroid/os/PersistableBundle;)V

    .line 873
    .local v0, "o":Landroid/service/voice/HotwordDetectedResult;
    return-object v0
.end method

.method public whitelist setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 747
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 748
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 749
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 750
    return-object p0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 693
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 694
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 695
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 696
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 821
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 822
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 823
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 824
    return-object p0
.end method

.method public whitelist setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 759
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 760
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 761
    iput-boolean p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 762
    return-object p0
.end method

.method public whitelist setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 734
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 735
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 736
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 737
    return-object p0
.end method

.method public whitelist setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 720
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 721
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 722
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 723
    return-object p0
.end method

.method public whitelist setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 798
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 799
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 800
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 801
    return-object p0
.end method

.method public whitelist setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # Landroid/media/MediaSyncEvent;

    .line 706
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 707
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 708
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 709
    return-object p0
.end method

.method public whitelist setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 785
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 786
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 787
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 788
    return-object p0
.end method

.method public whitelist setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 772
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 773
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 774
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 775
    return-object p0
.end method
