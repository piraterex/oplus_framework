.class public final Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keyphrase"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mRecognitionModes:I

.field private final blacklist mText:Ljava/lang/String;

.field private final blacklist mUsers:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 643
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/Locale;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mId:I

    .line 598
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mRecognitionModes:I

    .line 599
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mLocale:Ljava/util/Locale;

    .line 600
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mText:Ljava/lang/String;

    .line 601
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mUsers:[I

    .line 602
    return-void
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 13
    .param p0, "in"    # Landroid/os/Parcel;

    .line 661
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 662
    .local v6, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 663
    .local v7, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    .line 664
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 665
    .local v9, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 666
    .local v0, "users":[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 667
    .local v10, "numUsers":I
    if-ltz v10, :cond_0

    .line 668
    new-array v0, v10, [I

    .line 669
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readIntArray([I)V

    move-object v11, v0

    goto :goto_0

    .line 667
    :cond_0
    move-object v11, v0

    .line 671
    .end local v0    # "users":[I
    .local v11, "users":[I
    :goto_0
    new-instance v12, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v0, v12

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    return-object v12
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 708
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 709
    return v0

    .line 711
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 712
    return v1

    .line 714
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 715
    return v1

    .line 717
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 718
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 719
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 720
    return v1

    .line 722
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 723
    return v1

    .line 725
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 726
    return v1

    .line 728
    :cond_5
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_6

    .line 729
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 730
    return v1

    .line 732
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 733
    return v1

    .line 735
    :cond_7
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 736
    return v1

    .line 738
    :cond_8
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 739
    return v1

    .line 741
    :cond_9
    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 606
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mId:I

    return v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .locals 1

    .line 625
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getRecognitionModes()I
    .locals 1

    .line 619
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mRecognitionModes:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUsers()[I
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mUsers:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 696
    const/16 v0, 0x1f

    .line 697
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 698
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 699
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    add-int/2addr v1, v3

    .line 700
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    .line 701
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v3

    add-int/2addr v1, v3

    .line 702
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v2, v3

    .line 703
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 676
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 684
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    :goto_0
    return-void
.end method
