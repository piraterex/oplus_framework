.class Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;
.super Ljava/lang/Object;
.source "InputConnectionCommandHeader.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/inputmethod/InputConnectionCommandHeader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "sessionId":I
    new-instance v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    invoke-direct {v1, v0}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .locals 1
    .param p1, "size"    # I

    .line 59
    new-array v0, p1, [Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;->newArray(I)[Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object p1

    return-object p1
.end method
