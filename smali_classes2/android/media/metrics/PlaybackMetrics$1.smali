.class Landroid/media/metrics/PlaybackMetrics$1;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/metrics/PlaybackMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/metrics/PlaybackMetrics;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 493
    new-instance v0, Landroid/media/metrics/PlaybackMetrics;

    invoke-direct {v0, p1}, Landroid/media/metrics/PlaybackMetrics;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackMetrics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/metrics/PlaybackMetrics;
    .locals 1
    .param p1, "size"    # I

    .line 488
    new-array v0, p1, [Landroid/media/metrics/PlaybackMetrics;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackMetrics$1;->newArray(I)[Landroid/media/metrics/PlaybackMetrics;

    move-result-object p1

    return-object p1
.end method
