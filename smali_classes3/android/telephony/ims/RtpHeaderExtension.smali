.class public final Landroid/telephony/ims/RtpHeaderExtension;
.super Ljava/lang/Object;
.source "RtpHeaderExtension.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExtensionData:[B

.field private blacklist mLocalIdentifier:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Landroid/telephony/ims/RtpHeaderExtension$1;

    invoke-direct {v0}, Landroid/telephony/ims/RtpHeaderExtension$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[B)V
    .locals 2
    .param p1, "localIdentifier"    # I
    .param p2, "extensionData"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xd

    if-gt p1, v0, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 55
    iput p1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    .line 56
    iput-object p2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 57
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extensionDa is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "localIdentifier must be in range 1-14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RtpHeaderExtension-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/RtpHeaderExtension;

    .line 127
    .local v2, "that":Landroid/telephony/ims/RtpHeaderExtension;
    iget v3, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    iget v4, v2, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    iget-object v4, v2, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    .line 128
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 125
    .end local v2    # "that":Landroid/telephony/ims/RtpHeaderExtension;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getExtensionData()[B
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    return-object v0
.end method

.method public whitelist getLocalIdentifier()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 135
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RtpHeaderExtension{mLocalIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .line 145
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v5, "b_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mLocalIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/telephony/ims/RtpHeaderExtension;->mExtensionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    return-void
.end method
