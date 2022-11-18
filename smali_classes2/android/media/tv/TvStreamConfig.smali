.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final whitelist STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mGeneration:I

.field private greylist-max-o mMaxHeight:I

.field private greylist-max-o mMaxWidth:I

.field private greylist-max-o mStreamId:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGeneration(Landroid/media/tv/TvStreamConfig;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxHeight(Landroid/media/tv/TvStreamConfig;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxWidth(Landroid/media/tv/TvStreamConfig;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStreamId(Landroid/media/tv/TvStreamConfig;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/media/tv/TvStreamConfig;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const-class v0, Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvStreamConfig-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvStreamConfig;

    if-nez v1, :cond_1

    return v0

    .line 173
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvStreamConfig;

    .line 174
    .local v1, "config":Landroid/media/tv/TvStreamConfig;
    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mType:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public whitelist getGeneration()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return v0
.end method

.method public whitelist getMaxHeight()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return v0
.end method

.method public whitelist getStreamId()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvStreamConfig {mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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

    .line 107
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
