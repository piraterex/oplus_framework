.class public abstract Landroid/media/tv/BroadcastInfoResponse;
.super Ljava/lang/Object;
.source "BroadcastInfoResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoResponse$ResponseResult;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESPONSE_RESULT_CANCEL:I = 0x3

.field public static final whitelist RESPONSE_RESULT_ERROR:I = 0x1

.field public static final whitelist RESPONSE_RESULT_OK:I = 0x2


# instance fields
.field private final blacklist mRequestId:I

.field private final blacklist mResponseResult:I

.field private final blacklist mSequence:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/media/tv/BroadcastInfoResponse$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "sequence"    # I
    .param p4, "responseResult"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    .line 95
    iput p2, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    .line 96
    iput p3, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    .line 97
    iput p4, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    .line 98
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRequestId()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    return v0
.end method

.method public whitelist getResponseResult()I
    .locals 1

    .line 146
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    return v0
.end method

.method public whitelist getSequence()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
