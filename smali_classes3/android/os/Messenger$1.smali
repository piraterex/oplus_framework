.class Landroid/os/Messenger$1;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Messenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/Messenger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 104
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/Messenger;
    .locals 1
    .param p1, "size"    # I

    .line 108
    new-array v0, p1, [Landroid/os/Messenger;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroid/os/Messenger$1;->newArray(I)[Landroid/os/Messenger;

    move-result-object p1

    return-object p1
.end method
