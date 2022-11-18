.class public final Landroid/media/tv/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESPONSE_TYPE_ERROR:I = 0x4

.field public static final whitelist RESPONSE_TYPE_FINISHED:I = 0x2

.field public static final whitelist RESPONSE_TYPE_PLAYING:I = 0x1

.field public static final whitelist RESPONSE_TYPE_STOPPED:I = 0x3


# instance fields
.field private final blacklist mElapsedTime:J

.field private final blacklist mId:I

.field private final blacklist mResponseType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/media/tv/AdResponse$1;

    invoke-direct {v0}, Landroid/media/tv/AdResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "responseType"    # I
    .param p3, "elapsedTime"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/media/tv/AdResponse;->mId:I

    .line 65
    iput p2, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    .line 66
    iput-wide p3, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/AdResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getElapsedTimeMillis()J
    .locals 2

    .line 96
    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    return-wide v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    return v0
.end method

.method public whitelist getResponseType()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    return-void
.end method
