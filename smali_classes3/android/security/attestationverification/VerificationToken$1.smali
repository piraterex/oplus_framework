.class Landroid/security/attestationverification/VerificationToken$1;
.super Ljava/lang/Object;
.source "VerificationToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/attestationverification/VerificationToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/attestationverification/VerificationToken;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 311
    new-instance v0, Landroid/security/attestationverification/VerificationToken;

    invoke-direct {v0, p1}, Landroid/security/attestationverification/VerificationToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Landroid/security/attestationverification/VerificationToken$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/attestationverification/VerificationToken;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/attestationverification/VerificationToken;
    .locals 1
    .param p1, "size"    # I

    .line 306
    new-array v0, p1, [Landroid/security/attestationverification/VerificationToken;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Landroid/security/attestationverification/VerificationToken$1;->newArray(I)[Landroid/security/attestationverification/VerificationToken;

    move-result-object p1

    return-object p1
.end method
