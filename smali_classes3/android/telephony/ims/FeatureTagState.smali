.class public final Landroid/telephony/ims/FeatureTagState;
.super Ljava/lang/Object;
.source "FeatureTagState.java"

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
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureTag:Ljava/lang/String;

.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/telephony/ims/FeatureTagState$1;

    invoke-direct {v0}, Landroid/telephony/ims/FeatureTagState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/FeatureTagState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/FeatureTagState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/FeatureTagState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 118
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    .line 120
    .local v2, "that":Landroid/telephony/ims/FeatureTagState;
    iget v3, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    iget v4, v2, Landroid/telephony/ims/FeatureTagState;->mState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 118
    .end local v2    # "that":Landroid/telephony/ims/FeatureTagState;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getFeatureTag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureTagState{mFeatureTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Landroid/telephony/ims/FeatureTagState;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Landroid/telephony/ims/FeatureTagState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
