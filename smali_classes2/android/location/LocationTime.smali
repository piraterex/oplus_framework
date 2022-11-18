.class public final Landroid/location/LocationTime;
.super Ljava/lang/Object;
.source "LocationTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mElapsedRealtimeNanos:J

.field private final blacklist mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/location/LocationTime$1;

    invoke-direct {v0}, Landroid/location/LocationTime$1;-><init>()V

    sput-object v0, Landroid/location/LocationTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "elapsedRealtimeNanos"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/location/LocationTime;->mTime:J

    .line 34
    iput-wide p3, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getElapsedRealtimeNanos()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public blacklist getTime()J
    .locals 2

    .line 40
    iget-wide v0, p0, Landroid/location/LocationTime;->mTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-wide v0, p0, Landroid/location/LocationTime;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
