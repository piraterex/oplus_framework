.class Landroid/bluetooth/le/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanResult;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 401
    new-instance v0, Landroid/bluetooth/le/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .line 406
    new-array v0, p1, [Landroid/bluetooth/le/ScanResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanResult$1;->newArray(I)[Landroid/bluetooth/le/ScanResult;

    move-result-object p1

    return-object p1
.end method
