.class public Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfidenceLevel"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist confidenceLevel:I

.field public final greylist userId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1520
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "confidenceLevel"    # I

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    .line 1517
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    .line 1518
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1532
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1533
    .local v0, "userId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1534
    .local v1, "confidenceLevel":I
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1545
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1559
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1560
    return v0

    .line 1561
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1562
    return v1

    .line 1563
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1564
    return v1

    .line 1565
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 1566
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    if-eq v3, v4, :cond_3

    .line 1567
    return v1

    .line 1568
    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    if-eq v3, v4, :cond_4

    .line 1569
    return v1

    .line 1570
    :cond_4
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 1550
    const/16 v0, 0x1f

    .line 1551
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1552
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    add-int/2addr v2, v3

    .line 1553
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    add-int/2addr v1, v3

    .line 1554
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfidenceLevel [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

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

    .line 1539
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    return-void
.end method
