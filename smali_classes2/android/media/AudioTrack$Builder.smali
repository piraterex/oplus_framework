.class public Landroid/media/AudioTrack$Builder;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBufferSizeInBytes:I

.field private blacklist mCallRedirectionMode:I

.field private blacklist mEncapsulationMode:I

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffload:Z

.field private greylist-max-o mPerformanceMode:I

.field private greylist-max-o mSessionId:I

.field private blacklist mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    .line 1035
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    .line 1036
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    .line 1037
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    .line 1038
    iput-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    .line 1040
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    .line 1046
    return-void
.end method

.method private blacklist buildCallInjectionTrack()Landroid/media/AudioTrack;
    .locals 6

    .line 1278
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1281
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1282
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1283
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1279
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 1284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    .line 1286
    .local v0, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v1, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v1, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1287
    invoke-virtual {v1, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 1288
    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 1289
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v1

    .line 1290
    .local v1, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 1291
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 1292
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1295
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;

    move-result-object v3

    .line 1296
    .local v3, "track":Landroid/media/AudioTrack;
    if-eqz v3, :cond_0

    .line 1299
    invoke-static {v3, v2}, Landroid/media/AudioTrack;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1300
    return-object v3

    .line 1297
    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot create injection AudioTrack"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1293
    .end local v3    # "track":Landroid/media/AudioTrack;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error: could not register audio policy"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioTrack;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1312
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1313
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1314
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1317
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1319
    :pswitch_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1320
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    and-int/lit16 v2, v2, -0x201

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1324
    goto :goto_0

    .line 1326
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    invoke-static {v0, v2, v3, v4}, Landroid/media/AudioTrack;->-$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    goto :goto_0

    .line 1331
    :cond_1
    :pswitch_2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1332
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1339
    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_2

    .line 1340
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v2, 0xc

    .line 1341
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1343
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1344
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1347
    :cond_2
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1348
    invoke-direct {p0}, Landroid/media/AudioTrack$Builder;->buildCallInjectionTrack()Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 1349
    :cond_3
    if-ne v0, v1, :cond_4

    .line 1350
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 1351
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1355
    :cond_4
    iget-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    if-eqz v0, :cond_7

    .line 1356
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    if-eq v0, v1, :cond_6

    .line 1360
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1362
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create AudioTrack, offload format / attributes not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Offload and low latency modes are incompatible"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_7
    :goto_1
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    if-nez v0, :cond_9

    .line 1373
    const/4 v0, 0x1

    .line 1374
    .local v0, "bytesPerSample":I
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1376
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1379
    goto :goto_2

    .line 1377
    :catch_0
    move-exception v1

    .line 1381
    :cond_8
    :goto_2
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    .line 1385
    .end local v0    # "bytesPerSample":I
    :cond_9
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v4, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v5, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v6, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iget v7, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    iget-boolean v8, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    iget v9, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    iget-object v10, p0, Landroid/media/AudioTrack$Builder;->mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V

    .line 1388
    .local v0, "track":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1392
    return-object v0

    .line 1390
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot create AudioTrack"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack$Builder;
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1393
    .end local v0    # "track":Landroid/media/AudioTrack;
    .restart local p0    # "this":Landroid/media/AudioTrack$Builder;
    :catch_1
    move-exception v0

    .line 1394
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1057
    if-eqz p1, :cond_0

    .line 1061
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1062
    return-object p0

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1075
    if-eqz p1, :cond_0

    .line 1079
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1080
    return-object p0

    .line 1076
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1099
    if-lez p1, :cond_0

    .line 1102
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    .line 1103
    return-object p0

    .line 1100
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

.method public blacklist setCallRedirectionMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "callRedirectionMode"    # I

    .line 1264
    packed-switch p1, :pswitch_data_0

    .line 1271
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

    .line 1268
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    .line 1269
    nop

    .line 1274
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setEncapsulationMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "encapsulationMode"    # I

    .line 1120
    packed-switch p1, :pswitch_data_0

    .line 1127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encapsulation mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    .line 1125
    nop

    .line 1130
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;
    .locals 0
    .param p1, "offload"    # Z

    .line 1209
    iput-boolean p1, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    .line 1210
    return-object p0
.end method

.method public whitelist setPerformanceMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "performanceMode"    # I

    .line 1184
    packed-switch p1, :pswitch_data_0

    .line 1191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid performance mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1188
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    .line 1189
    nop

    .line 1194
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setSessionId(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1164
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    .line 1168
    return-object p0
.end method

.method public whitelist setTransferMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transfer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    .line 1146
    nop

    .line 1150
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setTunerConfiguration(Landroid/media/AudioTrack$TunerConfiguration;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .param p1, "tunerConfiguration"    # Landroid/media/AudioTrack$TunerConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1228
    if-eqz p1, :cond_0

    .line 1231
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;

    .line 1232
    return-object p0

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tunerConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
