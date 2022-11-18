.class Landroid/window/WindowContainerTransaction$Change$1;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$Change;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/WindowContainerTransaction$Change;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/WindowContainerTransaction$Change;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1047
    new-instance v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v0, p1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1044
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$Change$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/WindowContainerTransaction$Change;
    .locals 1
    .param p1, "size"    # I

    .line 1052
    new-array v0, p1, [Landroid/window/WindowContainerTransaction$Change;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1044
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$Change$1;->newArray(I)[Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    return-object p1
.end method
