.class public Landroid/hardware/radio/RadioManager$BandDescriptor;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandDescriptor"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mLowerLimit:I

.field private final greylist-max-o mRegion:I

.field private final greylist-max-o mSpacing:I

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUpperLimit:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlookupTypeFromParcel(Landroid/os/Parcel;)I
    .locals 0

    invoke-static {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->lookupTypeFromParcel(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 630
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIIII)V
    .locals 3
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 551
    iput p2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 552
    iput p3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 553
    iput p4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 554
    iput p5, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 555
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 620
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o lookupTypeFromParcel(Landroid/os/Parcel;)I
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 623
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 624
    .local v0, "pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 625
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 626
    .local v1, "type":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 686
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 687
    return v0

    .line 688
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 689
    return v2

    .line 690
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 691
    .local v1, "other":Landroid/hardware/radio/RadioManager$BandDescriptor;
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 692
    return v2

    .line 693
    :cond_2
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 694
    return v2

    .line 695
    :cond_3
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 696
    return v2

    .line 697
    :cond_4
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 698
    return v2

    .line 699
    :cond_5
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 700
    return v2

    .line 701
    :cond_6
    return v0
.end method

.method public whitelist getLowerLimit()I
    .locals 1

    .line 597
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    return v0
.end method

.method public whitelist getRegion()I
    .locals 1

    .line 561
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    return v0
.end method

.method public whitelist getSpacing()I
    .locals 1

    .line 611
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 571
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    return v0
.end method

.method public whitelist getUpperLimit()I
    .locals 1

    .line 604
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 674
    const/16 v0, 0x1f

    .line 675
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 676
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    add-int/2addr v2, v3

    .line 677
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    add-int/2addr v1, v3

    .line 678
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    add-int/2addr v2, v3

    .line 679
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    add-int/2addr v1, v3

    .line 680
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    add-int/2addr v2, v3

    .line 681
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist isAmBand()Z
    .locals 2

    .line 580
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isFmBand()Z
    .locals 3

    .line 589
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandDescriptor [mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 653
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    return-void
.end method
