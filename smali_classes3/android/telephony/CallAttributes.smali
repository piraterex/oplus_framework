.class public final Landroid/telephony/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

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
            "Landroid/telephony/CallAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mNetworkType:I

.field private blacklist mPreciseCallState:Landroid/telephony/PreciseCallState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Landroid/telephony/CallAttributes$1;

    invoke-direct {v0}, Landroid/telephony/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Landroid/telephony/PreciseCallState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    .line 58
    const-class v0, Landroid/telephony/CallQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V
    .locals 0
    .param p1, "state"    # Landroid/telephony/PreciseCallState;
    .param p2, "networkType"    # I
    .param p3, "callQuality"    # Landroid/telephony/CallQuality;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 44
    iput p2, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    .line 45
    iput-object p3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/telephony/CallAttributes;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/CallAttributes;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 120
    return v1

    .line 123
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallAttributes;

    .line 125
    .local v2, "s":Landroid/telephony/CallAttributes;
    iget-object v3, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    iget v4, v2, Landroid/telephony/CallAttributes;->mNetworkType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 125
    :goto_0
    return v0

    .line 116
    .end local v2    # "s":Landroid/telephony/CallAttributes;
    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist getCallQuality()Landroid/telephony/CallQuality;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    return v0
.end method

.method public whitelist getPreciseCallState()Landroid/telephony/PreciseCallState;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreciseCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    return-void
.end method
