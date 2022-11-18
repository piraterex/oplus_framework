.class public Landroid/media/AudioRecord$Builder;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist ERROR_MESSAGE_SOURCE_MISMATCH:Ljava/lang/String; = "Cannot both set audio source and set playback capture config"

.field private static final blacklist PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final blacklist PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final blacklist PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

.field private greylist-max-o mBufferSizeInBytes:I

.field private blacklist mCallRedirectionMode:I

.field private blacklist mContext:Landroid/content/Context;

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private blacklist mMaxSharedAudioHistoryMs:I

.field private blacklist mPrivacySensitive:I

.field private greylist-max-o mSessionId:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 605
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    .line 606
    iput v0, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    .line 607
    iput v0, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    .line 617
    return-void
.end method

.method private blacklist buildAudioPlaybackCaptureRecord()Landroid/media/AudioRecord;
    .locals 7

    .line 784
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, v1}, Landroid/media/AudioPlaybackCaptureConfiguration;->createAudioMix(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 785
    .local v0, "audioMix":Landroid/media/audiopolicy/AudioMix;
    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackCaptureConfiguration;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    .line 786
    .local v1, "projection":Landroid/media/projection/MediaProjection;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 787
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setMediaProjection(Landroid/media/projection/MediaProjection;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    .line 788
    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 790
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    .line 791
    .local v3, "error":I
    if-nez v3, :cond_1

    .line 795
    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v4

    .line 796
    .local v4, "record":Landroid/media/AudioRecord;
    if-eqz v4, :cond_0

    .line 799
    invoke-static {v4, v2}, Landroid/media/AudioRecord;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 800
    return-object v4

    .line 797
    :cond_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Cannot create AudioRecord"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 792
    .end local v4    # "record":Landroid/media/AudioRecord;
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Error: could not register audio policy"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist buildCallExtractionRecord()Landroid/media/AudioRecord;
    .locals 6

    .line 833
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 836
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 837
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 834
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 841
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 839
    invoke-virtual {v0, v3, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 844
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    .line 846
    .local v0, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v1, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v1, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 847
    invoke-virtual {v1, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 848
    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 849
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v1

    .line 850
    .local v1, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 851
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    if-nez v3, :cond_1

    .line 854
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v3

    .line 855
    .local v3, "record":Landroid/media/AudioRecord;
    if-eqz v3, :cond_0

    .line 858
    invoke-static {v3, v2}, Landroid/media/AudioRecord;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 859
    return-object v3

    .line 856
    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot create extraction AudioRecord"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 852
    .end local v3    # "record":Landroid/media/AudioRecord;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error: could not register audio policy"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-eqz v0, :cond_0

    .line 923
    invoke-direct {p0}, Landroid/media/AudioRecord$Builder;->buildAudioPlaybackCaptureRecord()Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 927
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 928
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 929
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    goto :goto_0

    .line 932
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    if-nez v0, :cond_2

    .line 933
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 934
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 937
    :cond_2
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 938
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    if-nez v0, :cond_3

    .line 939
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 940
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 944
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 945
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 946
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 952
    :cond_4
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_7

    .line 953
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    .line 954
    .local v0, "source":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7ce

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7cd

    if-eq v0, v3, :cond_6

    .line 964
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    iget-object v5, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v3, v5}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 965
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    if-ne v5, v4, :cond_5

    move v1, v4

    .line 966
    :cond_5
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_1

    .line 960
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request private capture with source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 970
    .end local v0    # "source":I
    :cond_7
    :goto_1
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    if-ne v0, v2, :cond_8

    .line 971
    invoke-direct {p0}, Landroid/media/AudioRecord$Builder;->buildCallExtractionRecord()Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0

    .line 972
    :cond_8
    if-ne v0, v4, :cond_9

    .line 973
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 974
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 982
    :cond_9
    :try_start_0
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    if-nez v0, :cond_a

    .line 983
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 984
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 986
    :cond_a
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v4, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    iget v5, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    iget-object v6, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;ILandroid/media/AudioRecord-IA;)V

    .line 989
    .local v0, "record":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_b

    .line 993
    return-object v0

    .line 991
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot create AudioRecord"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioRecord$Builder;
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .end local v0    # "record":Landroid/media/AudioRecord;
    .restart local p0    # "this":Landroid/media/AudioRecord$Builder;
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 664
    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 672
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 673
    return-object p0

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid capture preset in AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 683
    if-eqz p1, :cond_0

    .line 687
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 688
    return-object p0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "config"    # Landroid/media/AudioPlaybackCaptureConfiguration;

    .line 721
    const-string v0, "Illegal null AudioPlaybackCaptureConfiguration argument"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot both set audio source and set playback capture config"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 726
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    .line 727
    return-object p0
.end method

.method public whitelist setAudioSource(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot both set audio source and set playback capture config"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 629
    if-ltz p1, :cond_1

    .line 630
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 633
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 634
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 636
    return-object p0

    .line 631
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 704
    if-lez p1, :cond_0

    .line 707
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 708
    return-object p0

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCallRedirectionMode(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "callRedirectionMode"    # I

    .line 819
    packed-switch p1, :pswitch_data_0

    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid call redirection mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :pswitch_0
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    .line 824
    nop

    .line 829
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setContext(Landroid/content/Context;)Landroid/media/AudioRecord$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 647
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    .line 650
    return-object p0
.end method

.method public whitelist setMaxSharedAudioHistoryMillis(J)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "maxSharedAudioHistoryMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 877
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 881
    long-to-int v0, p1

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    .line 882
    return-object p0

    .line 879
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal maxSharedAudioHistoryMillis argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPrivacySensitive(Z)Landroid/media/AudioRecord$Builder;
    .locals 0
    .param p1, "privacySensitive"    # Z

    .line 755
    nop

    .line 756
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    .line 757
    return-object p0
.end method

.method public whitelist setSessionId(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "sessionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 771
    if-ltz p1, :cond_1

    .line 775
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    if-nez v0, :cond_0

    .line 776
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    goto :goto_0

    .line 778
    :cond_0
    const-string v0, "android.media.AudioRecord"

    const-string v1, "setSessionId() called twice or after setSharedAudioEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-object p0

    .line 772
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSharedAudioEvent(Landroid/media/MediaSyncEvent;)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "event"    # Landroid/media/MediaSyncEvent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 899
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 904
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 910
    return-object p0

    .line 905
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 906
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 902
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
