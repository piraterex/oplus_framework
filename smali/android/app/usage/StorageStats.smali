.class public final Landroid/app/usage/StorageStats;
.super Ljava/lang/Object;
.source "StorageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/StorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o cacheBytes:J

.field public greylist-max-o codeBytes:J

.field public greylist-max-o dataBytes:J

.field public blacklist externalCacheBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Landroid/app/usage/StorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/StorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppBytes()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    return-wide v0
.end method

.method public whitelist getCacheBytes()J
    .locals 2

    .line 78
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    return-wide v0
.end method

.method public whitelist getDataBytes()J
    .locals 2

    .line 64
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    return-wide v0
.end method

.method public whitelist getExternalCacheBytes()J
    .locals 2

    .line 89
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    return-void
.end method
