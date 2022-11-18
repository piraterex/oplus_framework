.class Landroid/media/tv/TimelineRequest$1;
.super Ljava/lang/Object;
.source "TimelineRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TimelineRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TimelineRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    invoke-static {p1}, Landroid/media/tv/TimelineRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/tv/TimelineRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/TimelineRequest;
    .locals 1
    .param p1, "size"    # I

    .line 40
    new-array v0, p1, [Landroid/media/tv/TimelineRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/tv/TimelineRequest$1;->newArray(I)[Landroid/media/tv/TimelineRequest;

    move-result-object p1

    return-object p1
.end method
