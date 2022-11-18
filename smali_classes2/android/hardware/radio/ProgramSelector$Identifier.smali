.class public final Landroid/hardware/radio/ProgramSelector$Identifier;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identifier"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 650
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$Identifier$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_0

    .line 562
    const/4 p1, 0x4

    .line 564
    :cond_0
    iput p1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    .line 565
    iput-wide p2, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    .line 566
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    .line 637
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector$Identifier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 628
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 629
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 630
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 631
    .local v1, "other":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    iget v4, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getType()I
    .locals 5

    .line 574
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-wide v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 579
    const/16 v0, 0x2714

    return v0

    .line 581
    :cond_0
    return v0
.end method

.method public whitelist getValue()J
    .locals 2

    .line 612
    iget-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 623
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCategoryType()Z
    .locals 2

    .line 593
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7cf

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identifier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 641
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 643
    return-void
.end method
