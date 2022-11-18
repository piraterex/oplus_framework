.class public final Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioStream:Landroid/os/ParcelFileDescriptor;

.field private blacklist mCaptureAvailable:Z

.field private blacklist mCaptureSession:I

.field private blacklist mData:[B

.field private blacklist mDataFormat:I

.field private blacklist mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

.field private blacklist mKeyphraseExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 541
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 543
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 545
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 546
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 547
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 550
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 2
    .param p1, "keyphraseRecognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 541
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 543
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 545
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 546
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 547
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 553
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->isCaptureAvailable()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 554
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureSession()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 555
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 558
    :cond_0
    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 559
    :cond_1
    nop

    .line 558
    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 560
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 563
    :cond_2
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 565
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 564
    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 567
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
    .locals 11

    .line 674
    new-instance v10, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    iget v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload-IA;)V

    return-object v10
.end method

.method public blacklist setAudioStream(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;

    .line 654
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 655
    return-object p0
.end method

.method public blacklist setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 595
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 596
    return-object p0
.end method

.method public blacklist setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "captureAvailable"    # Z

    .line 576
    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 577
    return-object p0
.end method

.method public blacklist setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "captureSession"    # I

    .line 586
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 587
    return-object p0
.end method

.method public blacklist setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "data"    # [B

    .line 627
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 628
    return-object p0
.end method

.method public blacklist setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "dataFormat"    # I

    .line 607
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 608
    return-object p0
.end method

.method public blacklist setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 638
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 639
    return-object p0
.end method

.method public blacklist setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)",
            "Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;"
        }
    .end annotation

    .line 665
    .local p1, "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 666
    return-object p0
.end method
