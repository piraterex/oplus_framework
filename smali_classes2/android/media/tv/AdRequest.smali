.class public final Landroid/media/tv/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_START:I = 0x1

.field public static final whitelist REQUEST_TYPE_STOP:I = 0x2


# instance fields
.field private final blacklist mEchoInterval:J

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mId:I

.field private final blacklist mMediaFileType:Ljava/lang/String;

.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mRequestType:I

.field private final blacklist mStartTime:J

.field private final blacklist mStopTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/media/tv/AdRequest$1;

    invoke-direct {v0}, Landroid/media/tv/AdRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/ParcelFileDescriptor;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "requestType"    # I
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "startTime"    # J
    .param p6, "stopTime"    # J
    .param p8, "echoInterval"    # J
    .param p10, "mediaFileType"    # Ljava/lang/String;
    .param p11, "metadata"    # Landroid/os/Bundle;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/media/tv/AdRequest;->mId:I

    .line 77
    iput p2, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    .line 78
    iput-object p3, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-wide p4, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    .line 80
    iput-wide p6, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    .line 81
    iput-wide p8, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    .line 82
    iput-object p10, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    .line 83
    iput-object p11, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mId:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/AdRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEchoIntervalMillis()J
    .locals 2

    .line 151
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    return-wide v0
.end method

.method public whitelist getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    return v0
.end method

.method public whitelist getMediaFileType()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/os/Bundle;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getRequestType()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getStartTimeMillis()J
    .locals 2

    .line 132
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    return-wide v0
.end method

.method public whitelist getStopTimeMillis()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 187
    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    :goto_0
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
