.class Landroid/security/keymaster/OperationResult$1;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    new-instance v0, Landroid/security/keymaster/OperationResult;

    invoke-direct {v0, p1}, Landroid/security/keymaster/OperationResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "length"    # I

    .line 48
    new-array v0, p1, [Landroid/security/keymaster/OperationResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->newArray(I)[Landroid/security/keymaster/OperationResult;

    move-result-object p1

    return-object p1
.end method
