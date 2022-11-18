.class Lcom/oplus/app/KernelWakeLockInfo$1;
.super Ljava/lang/Object;
.source "KernelWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/KernelWakeLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/app/KernelWakeLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/app/KernelWakeLockInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 26
    new-instance v0, Lcom/oplus/app/KernelWakeLockInfo;

    invoke-direct {v0}, Lcom/oplus/app/KernelWakeLockInfo;-><init>()V

    .line 27
    .local v0, "_aidl_out":Lcom/oplus/app/KernelWakeLockInfo;
    invoke-virtual {v0, p1}, Lcom/oplus/app/KernelWakeLockInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/oplus/app/KernelWakeLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/app/KernelWakeLockInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/app/KernelWakeLockInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 32
    new-array v0, p1, [Lcom/oplus/app/KernelWakeLockInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/oplus/app/KernelWakeLockInfo$1;->newArray(I)[Lcom/oplus/app/KernelWakeLockInfo;

    move-result-object p1

    return-object p1
.end method
