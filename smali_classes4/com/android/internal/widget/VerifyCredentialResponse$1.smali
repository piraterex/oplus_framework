.class Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, "responseCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 60
    .local v8, "timeout":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 61
    .local v9, "gatekeeperHAT":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 63
    .local v10, "gatekeeperPasswordHandle":J
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v6, 0x0

    move-object v0, v12

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .param p1, "size"    # I

    .line 69
    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
