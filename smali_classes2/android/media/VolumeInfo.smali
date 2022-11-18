.class public final Landroid/media/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INDEX_NOT_SET:I = -0x64

.field private static final blacklist TAG:Ljava/lang/String; = "VolumeInfo"

.field private static blacklist sDefaultVolumeInfo:Landroid/media/VolumeInfo;

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mIsMuted:Z

.field private final blacklist mMaxVolIndex:I

.field private final blacklist mMinVolIndex:I

.field private final blacklist mStreamType:I

.field private final blacklist mUsesStreamType:Z

.field private final blacklist mVolGroupId:I

.field private final blacklist mVolIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolGroupId(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 365
    new-instance v0, Landroid/media/VolumeInfo$1;

    invoke-direct {v0}, Landroid/media/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    .line 363
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/VolumeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/VolumeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZIIIII)V
    .locals 0
    .param p1, "usesStreamType"    # Z
    .param p2, "isMuted"    # Z
    .param p3, "volIndex"    # I
    .param p4, "minVolIndex"    # I
    .param p5, "maxVolIndex"    # I
    .param p6, "volGroupId"    # I
    .param p7, "streamType"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    .line 63
    iput-boolean p2, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    .line 64
    iput p3, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 65
    iput p4, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    .line 66
    iput p5, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    .line 67
    iput p6, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    .line 68
    iput p7, p0, Landroid/media/VolumeInfo;->mStreamType:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZIIIIILandroid/media/VolumeInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/media/VolumeInfo;-><init>(ZZIIIII)V

    return-void
.end method

.method public static blacklist getDefaultVolumeInfo()Landroid/media/VolumeInfo;
    .locals 3

    .line 166
    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 168
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    .line 170
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    if-nez v0, :cond_1

    .line 172
    :try_start_0
    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeInfo"

    const-string v2, "Error calling getDefaultVolumeInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    new-instance v1, Landroid/media/VolumeInfo$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 315
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 316
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeInfo;

    .line 319
    .local v2, "that":Landroid/media/VolumeInfo;
    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    iget v4, v2, Landroid/media/VolumeInfo;->mStreamType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mIsMuted:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mVolIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    iget v4, v2, Landroid/media/VolumeInfo;->mVolGroupId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 316
    .end local v2    # "that":Landroid/media/VolumeInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getMaxVolumeIndex()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return v0
.end method

.method public blacklist getMinVolumeIndex()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return v0
.end method

.method public blacklist getStreamType()I
    .locals 2

    .line 86
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use stream types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 5

    .line 108
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_2

    .line 111
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "volGroups":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 113
    .local v2, "group":Landroid/media/audiopolicy/AudioVolumeGroup;
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v3

    iget v4, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    if-ne v3, v4, :cond_0

    .line 114
    return-object v2

    .line 116
    .end local v2    # "group":Landroid/media/audiopolicy/AudioVolumeGroup;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 109
    .end local v0    # "volGroups":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use AudioVolumeGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getVolumeIndex()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return v0
.end method

.method public blacklist hasStreamType()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return v0
.end method

.method public blacklist hasVolumeGroup()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 309
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 309
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isMuted()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 330
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " volGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " muted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    iget v2, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    const-string v3, ""

    const/16 v4, -0x64

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " volIndex:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    iget v2, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " min:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    iget v2, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-eq v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 346
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 347
    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/media/VolumeInfo;->mVolGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    return-void
.end method
