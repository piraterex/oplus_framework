.class Landroid/companion/SystemDataTransferRequest$1;
.super Ljava/lang/Object;
.source "SystemDataTransferRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/SystemDataTransferRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/SystemDataTransferRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/companion/SystemDataTransferRequest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    new-instance v0, Landroid/companion/SystemDataTransferRequest;

    invoke-direct {v0, p1}, Landroid/companion/SystemDataTransferRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/companion/SystemDataTransferRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/SystemDataTransferRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/companion/SystemDataTransferRequest;
    .locals 1
    .param p1, "size"    # I

    .line 154
    new-array v0, p1, [Landroid/companion/SystemDataTransferRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/companion/SystemDataTransferRequest$1;->newArray(I)[Landroid/companion/SystemDataTransferRequest;

    move-result-object p1

    return-object p1
.end method
