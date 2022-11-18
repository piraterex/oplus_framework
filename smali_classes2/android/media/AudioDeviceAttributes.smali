.class public final Landroid/media/AudioDeviceAttributes;
.super Ljava/lang/Object;
.source "AudioDeviceAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceAttributes$Role;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ROLE_INPUT:I = 0x1

.field public static final whitelist ROLE_OUTPUT:I = 0x2


# instance fields
.field private final blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAudioDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAudioProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNativeType:I

.field private final blacklist mRole:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Landroid/media/AudioDeviceAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioDeviceAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 7
    .param p1, "role"    # I
    .param p2, "type"    # I
    .param p3, "address"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "role"    # I
    .param p2, "type"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    .local p6, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid role "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 144
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->enforceValidAudioDeviceTypeOut(I)V

    .line 145
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    goto :goto_1

    .line 146
    :cond_2
    if-ne p1, v0, :cond_3

    .line 147
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->enforceValidAudioDeviceTypeIn(I)V

    .line 148
    invoke-static {p2, p3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    goto :goto_1

    .line 150
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 153
    :goto_1
    iput p1, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 154
    iput p2, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 155
    iput-object p3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 158
    iput-object p6, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 159
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "nativeType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 169
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nativeType"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 181
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 182
    iput-object p2, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 184
    iput p1, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 104
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 105
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 108
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAudioProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 110
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 334
    const-class v0, Landroid/media/AudioProfile;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/AudioProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioProfile;

    .line 336
    .local v0, "audioProfilesArray":[Landroid/media/AudioProfile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 337
    const-class v1, Landroid/media/AudioDescriptor;

    .line 338
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/media/AudioDescriptor;

    .line 337
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/AudioDescriptor;

    .line 339
    .local v1, "audioDescriptorsArray":[Landroid/media/AudioDescriptor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 340
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioDeviceAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist roleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 295
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "output"

    goto :goto_0

    :cond_0
    const-string v0, "input"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist equalTypeAddress(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 288
    .local v2, "that":Landroid/media/AudioDeviceAttributes;
    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mRole:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 285
    .end local v2    # "that":Landroid/media/AudioDeviceAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 265
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 266
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 269
    .local v2, "that":Landroid/media/AudioDeviceAttributes;
    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mRole:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 273
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 274
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 266
    .end local v2    # "that":Landroid/media/AudioDeviceAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAudioDescriptors()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAudioProfiles()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInternalType()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRole()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 196
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 206
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 260
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAttributes: role:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 301
    invoke-static {v2}, Landroid/media/AudioDeviceAttributes;->roleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 303
    :cond_0
    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profiles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descriptors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 307
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 300
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 317
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/AudioProfile;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioProfile;

    .line 322
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 324
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 325
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/AudioDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioDescriptor;

    .line 324
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 326
    return-void
.end method
