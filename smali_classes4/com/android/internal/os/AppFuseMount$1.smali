.class Lcom/android/internal/os/AppFuseMount$1;
.super Ljava/lang/Object;
.source "AppFuseMount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/AppFuseMount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/AppFuseMount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    new-instance v0, Lcom/android/internal/os/AppFuseMount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-class v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/os/AppFuseMount;
    .locals 1
    .param p1, "size"    # I

    .line 65
    new-array v0, p1, [Lcom/android/internal/os/AppFuseMount;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->newArray(I)[Lcom/android/internal/os/AppFuseMount;

    move-result-object p1

    return-object p1
.end method
