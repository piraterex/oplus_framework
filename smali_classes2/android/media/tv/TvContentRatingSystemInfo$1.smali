.class Landroid/media/tv/TvContentRatingSystemInfo$1;
.super Ljava/lang/Object;
.source "TvContentRatingSystemInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContentRatingSystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TvContentRatingSystemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 1
    .param p1, "size"    # I

    .line 92
    new-array v0, p1, [Landroid/media/tv/TvContentRatingSystemInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo$1;->newArray(I)[Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object p1

    return-object p1
.end method
