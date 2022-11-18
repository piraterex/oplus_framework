.class Landroid/os/ParcelFileDescriptor$2;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1124
    .local v0, "hasCommChannel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1125
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 1126
    .local v2, "commChannel":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1129
    :cond_0
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$2;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "size"    # I

    .line 1134
    new-array v0, p1, [Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$2;->newArray(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
