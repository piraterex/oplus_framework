.class Landroid/bluetooth/le/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 287
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .line 282
    new-array v0, p1, [Landroid/bluetooth/le/ScanSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanSettings$1;->newArray(I)[Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
