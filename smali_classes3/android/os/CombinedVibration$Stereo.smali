.class public final Landroid/os/CombinedVibration$Stereo;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stereo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Stereo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 522
    new-instance v0, Landroid/os/CombinedVibration$Stereo$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Stereo$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Stereo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 407
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .local v0, "size":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    .local v2, "vibratorId":I
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    sget-object v4, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    .end local v2    # "vibratorId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 417
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 481
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    return v1

    .line 484
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 485
    .local v0, "other":Landroid/os/CombinedVibration$Stereo;
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 486
    return v1

    .line 488
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 489
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    iget-object v4, v0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    iget-object v5, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 490
    return v1

    .line 488
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getDuration()J
    .locals 8

    .line 431
    const-wide/high16 v0, -0x8000000000000000L

    .line 432
    .local v0, "maxDuration":J
    const/4 v2, 0x0

    .line 433
    .local v2, "hasUnknownStep":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 434
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v4}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v4

    .line 435
    .local v4, "duration":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 437
    return-wide v4

    .line 439
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 443
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v2, v6

    .line 433
    .end local v4    # "duration":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    .line 447
    const-wide/16 v3, -0x1

    return-wide v3

    .line 449
    :cond_3
    return-wide v0
.end method

.method public blacklist getEffects()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist hasVibrator(I)Z
    .locals 1
    .param p1, "vibratorId"    # I

    .line 476
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 498
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 2

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const/4 v1, 0x0

    return v1

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stereo{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 2

    .line 466
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 469
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 513
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
