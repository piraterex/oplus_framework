.class Landroid/app/timezone/DistroFormatVersion$1;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/DistroFormatVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timezone/DistroFormatVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/DistroFormatVersion;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "majorVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "minorVersion":I
    new-instance v2, Landroid/app/timezone/DistroFormatVersion;

    invoke-direct {v2, v0, v1}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/timezone/DistroFormatVersion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/DistroFormatVersion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/timezone/DistroFormatVersion;
    .locals 1
    .param p1, "size"    # I

    .line 57
    new-array v0, p1, [Landroid/app/timezone/DistroFormatVersion;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/timezone/DistroFormatVersion$1;->newArray(I)[Landroid/app/timezone/DistroFormatVersion;

    move-result-object p1

    return-object p1
.end method
