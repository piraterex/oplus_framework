.class Landroid/security/keymaster/KeymasterBlob$1;
.super Ljava/lang/Object;
.source "KeymasterBlob.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterBlob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/KeymasterBlob;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterBlob;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    new-instance v0, Landroid/security/keymaster/KeymasterBlob;

    invoke-direct {v0, p1}, Landroid/security/keymaster/KeymasterBlob;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterBlob$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterBlob;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/keymaster/KeymasterBlob;
    .locals 1
    .param p1, "length"    # I

    .line 41
    new-array v0, p1, [Landroid/security/keymaster/KeymasterBlob;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterBlob$1;->newArray(I)[Landroid/security/keymaster/KeymasterBlob;

    move-result-object p1

    return-object p1
.end method
