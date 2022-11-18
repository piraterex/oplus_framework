.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
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
    name = "ModelParamRange"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnd:I

.field private final blacklist mStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 984
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    .line 956
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    .line 957
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    .line 963
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1017
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1018
    return v0

    .line 1020
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1021
    return v1

    .line 1023
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1024
    return v1

    .line 1026
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    .line 1027
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    if-eq v3, v4, :cond_3

    .line 1028
    return v1

    .line 1030
    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    if-eq v3, v4, :cond_4

    .line 1031
    return v1

    .line 1033
    :cond_4
    return v0
.end method

.method public whitelist getEnd()I
    .locals 1

    .line 980
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    return v0
.end method

.method public whitelist getStart()I
    .locals 1

    .line 971
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 1008
    const/16 v0, 0x1f

    .line 1009
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1010
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    add-int/2addr v2, v3

    .line 1011
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    add-int/2addr v1, v3

    .line 1012
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelParamRange [start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

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

    .line 1038
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    return-void
.end method
