.class public final Landroid/telephony/ims/ImsRegistrationAttributes;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRegistrationAttributes$Builder;,
        Landroid/telephony/ims/ImsRegistrationAttributes$ImsAttributeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ATTR_EPDG_OVER_CELL_INTERNET:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsRegistrationAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsAttributeFlags:I

.field private final blacklist mRegistrationTech:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 218
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;)V
    .locals 1
    .param p1, "registrationTech"    # I
    .param p2, "transportType"    # I
    .param p3, "imsAttributeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p4, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 145
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 146
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 156
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 233
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 234
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 235
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 236
    .local v2, "that":Landroid/telephony/ims/ImsRegistrationAttributes;
    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 239
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 236
    :goto_0
    return v0

    .line 234
    .end local v2    # "that":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAttributeFlags()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    return v0
.end method

.method public whitelist getFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getRegistrationTechnology()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    return v0
.end method

.method public whitelist getTransportType()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationAttributes { transportType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureTags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

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

    .line 212
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 216
    return-void
.end method
