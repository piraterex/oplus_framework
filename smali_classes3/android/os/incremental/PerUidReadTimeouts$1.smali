.class Landroid/os/incremental/PerUidReadTimeouts$1;
.super Ljava/lang/Object;
.source "PerUidReadTimeouts.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/PerUidReadTimeouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/incremental/PerUidReadTimeouts;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/incremental/PerUidReadTimeouts;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 32
    new-instance v0, Landroid/os/incremental/PerUidReadTimeouts;

    invoke-direct {v0}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    .line 33
    .local v0, "_aidl_out":Landroid/os/incremental/PerUidReadTimeouts;
    invoke-virtual {v0, p1}, Landroid/os/incremental/PerUidReadTimeouts;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/incremental/PerUidReadTimeouts$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/incremental/PerUidReadTimeouts;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 38
    new-array v0, p1, [Landroid/os/incremental/PerUidReadTimeouts;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/incremental/PerUidReadTimeouts$1;->newArray(I)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object p1

    return-object p1
.end method
