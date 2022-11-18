.class Landroid/system/keystore2/KeyEntryResponse$1;
.super Ljava/lang/Object;
.source "KeyEntryResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/KeyEntryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/keystore2/KeyEntryResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/keystore2/KeyEntryResponse;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 15
    new-instance v0, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v0}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    .line 16
    .local v0, "_aidl_out":Landroid/system/keystore2/KeyEntryResponse;
    invoke-virtual {v0, p1}, Landroid/system/keystore2/KeyEntryResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/system/keystore2/KeyEntryResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/keystore2/KeyEntryResponse;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 21
    new-array v0, p1, [Landroid/system/keystore2/KeyEntryResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/system/keystore2/KeyEntryResponse$1;->newArray(I)[Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    return-object p1
.end method
