.class Lcom/android/internal/widget/LockscreenCredential$1;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockscreenCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/LockscreenCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 349
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BLcom/android/internal/widget/LockscreenCredential-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockscreenCredential$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/LockscreenCredential;
    .locals 1
    .param p1, "size"    # I

    .line 354
    new-array v0, p1, [Lcom/android/internal/widget/LockscreenCredential;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockscreenCredential$1;->newArray(I)[Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    return-object p1
.end method
