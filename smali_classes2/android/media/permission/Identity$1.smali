.class Landroid/media/permission/Identity$1;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/permission/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/permission/Identity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/permission/Identity;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 24
    .local v0, "_aidl_out":Landroid/media/permission/Identity;
    invoke-virtual {v0, p1}, Landroid/media/permission/Identity;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/permission/Identity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/permission/Identity;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/permission/Identity;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 29
    new-array v0, p1, [Landroid/media/permission/Identity;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/permission/Identity$1;->newArray(I)[Landroid/media/permission/Identity;

    move-result-object p1

    return-object p1
.end method
