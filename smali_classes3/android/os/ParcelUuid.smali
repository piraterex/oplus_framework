.class public final Landroid/os/ParcelUuid;
.super Ljava/lang/Object;
.source "ParcelUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Landroid/os/ParcelUuid$1;

    invoke-direct {v0}, Landroid/os/ParcelUuid$1;-><init>()V

    sput-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    .line 41
    return-void
.end method

.method public static whitelist fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    if-ne p0, p1, :cond_1

    .line 101
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_1
    instance-of v1, p1, Landroid/os/ParcelUuid;

    if-nez v1, :cond_2

    .line 105
    return v0

    .line 108
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelUuid;

    .line 110
    .local v0, "that":Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    return-void
.end method
