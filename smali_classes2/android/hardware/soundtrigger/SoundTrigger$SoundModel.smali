.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel$SoundModelType;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_GENERIC_SOUND:I = 0x1

.field public static final whitelist TYPE_KEYPHRASE:I = 0x0

.field public static final greylist-max-o TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mType:I

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVendorUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;I[BI)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "type"    # I
    .param p4, "data"    # [B
    .param p5, "version"    # I

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    .line 482
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    :goto_0
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    .line 483
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    .line 484
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    .line 485
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    .line 486
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 531
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 532
    return v0

    .line 534
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 535
    return v1

    .line 537
    :cond_1
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_2

    .line 538
    return v1

    .line 540
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 541
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 542
    return v1

    .line 544
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_4

    .line 545
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 546
    return v1

    .line 548
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 549
    return v1

    .line 551
    :cond_5
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_6

    .line 552
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 553
    return v1

    .line 555
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 556
    return v1

    .line 558
    :cond_7
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_8

    .line 559
    return v1

    .line 561
    :cond_8
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 562
    return v1

    .line 564
    :cond_9
    return v0
.end method

.method public whitelist getData()[B
    .locals 1

    .line 514
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 497
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVendorUuid()Ljava/util/UUID;
    .locals 1

    .line 503
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 508
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 519
    const/16 v0, 0x1f

    .line 520
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 521
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v3

    add-int/2addr v2, v3

    .line 522
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 523
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    add-int/2addr v2, v3

    .line 524
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 525
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    .line 526
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
