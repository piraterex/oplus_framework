.class public Landroid/media/SoundPool$Builder;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mMaxStreams:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 571
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/SoundPool;
    .locals 4

    .line 604
    iget-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 606
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 608
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget v1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    iget-object v2, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool-IA;)V

    return-object v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 596
    if-eqz p1, :cond_0

    .line 599
    iput-object p1, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 600
    return-object p0

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaxStreams(I)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "maxStreams"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 580
    if-lez p1, :cond_0

    .line 584
    iput p1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 585
    return-object p0

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strictly positive value required for the maximum number of streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
