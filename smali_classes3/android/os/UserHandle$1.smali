.class Landroid/os/UserHandle$1;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/UserHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 662
    invoke-virtual {p0, p1}, Landroid/os/UserHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/UserHandle;
    .locals 1
    .param p1, "size"    # I

    .line 670
    new-array v0, p1, [Landroid/os/UserHandle;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 662
    invoke-virtual {p0, p1}, Landroid/os/UserHandle$1;->newArray(I)[Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method
