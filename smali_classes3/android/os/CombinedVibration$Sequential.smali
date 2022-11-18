.class public final Landroid/os/CombinedVibration$Sequential;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequential"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Sequential;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_HAPTIC_FEEDBACK_SEQUENCE_SIZE:J = 0x3L


# instance fields
.field private final blacklist mDelays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 696
    new-instance v0, Landroid/os/CombinedVibration$Sequential$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Sequential$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Sequential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 553
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 558
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    sget-object v3, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .local p2, "delays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 567
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 663
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 664
    return v1

    .line 666
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 667
    .local v0, "other":Landroid/os/CombinedVibration$Sequential;
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    iget-object v3, v0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    iget-object v3, v0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getDelays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDuration()J
    .locals 10

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "hasUnknownStep":Z
    const-wide/16 v1, 0x0

    .line 585
    .local v1, "durations":J
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 586
    .local v3, "effectCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 587
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 588
    .local v5, "effect":Landroid/os/CombinedVibration;
    invoke-virtual {v5}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v6

    .line 589
    .local v6, "duration":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 591
    return-wide v6

    .line 593
    :cond_0
    add-long/2addr v1, v6

    .line 597
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v0, v8

    .line 586
    .end local v5    # "effect":Landroid/os/CombinedVibration;
    .end local v6    # "duration":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 599
    .end local v4    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 601
    const-wide/16 v4, -0x1

    return-wide v4

    .line 603
    :cond_3
    const-wide/16 v4, 0x0

    .line 604
    .local v4, "delays":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_4

    .line 605
    iget-object v7, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 604
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 607
    .end local v6    # "i":I
    :cond_4
    add-long v6, v1, v4

    return-wide v6
.end method

.method public blacklist getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasVibrator(I)Z
    .locals 3
    .param p1, "vibratorId"    # I

    .line 652
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 653
    .local v0, "effectCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 654
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-virtual {v2, p1}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    const/4 v2, 0x1

    return v2

    .line 653
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 672
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 5

    .line 613
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 614
    .local v0, "effectCount":I
    int-to-long v1, v0

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 615
    return v2

    .line 617
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 618
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-virtual {v3}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 619
    return v2

    .line 617
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequential{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

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
    .locals 5

    .line 628
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 630
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Effect and delays should have equal length"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 632
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 633
    .local v0, "effectCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 634
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 635
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delays must all be >= 0 (delays="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 640
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    .line 641
    .local v2, "effect":Landroid/os/CombinedVibration;
    instance-of v3, v2, Landroid/os/CombinedVibration$Sequential;

    if-nez v3, :cond_4

    .line 645
    invoke-virtual {v2}, Landroid/os/CombinedVibration;->validate()V

    .line 639
    .end local v2    # "effect":Landroid/os/CombinedVibration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 642
    .restart local v2    # "effect":Landroid/os/CombinedVibration;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "There should be no nested sequential effects in a combined effect"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 647
    .end local v1    # "i":I
    .end local v2    # "effect":Landroid/os/CombinedVibration;
    :cond_5
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 687
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 690
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-virtual {v1, p1, p2}, Landroid/os/CombinedVibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
