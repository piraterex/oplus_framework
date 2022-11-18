.class public final Landroid/media/tv/TimelineRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TimelineRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x8


# instance fields
.field private final blacklist mIntervalMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/media/tv/TimelineRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "intervalMillis"    # I

    .line 51
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 52
    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    .line 58
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Landroid/media/tv/TimelineRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntervalMillis()I
    .locals 1

    .line 64
    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
