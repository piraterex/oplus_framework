.class Landroid/os/Parcel$1;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Landroid/os/Parcel$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Landroid/os/Parcel$1;->newArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "size"    # I

    .line 459
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method
