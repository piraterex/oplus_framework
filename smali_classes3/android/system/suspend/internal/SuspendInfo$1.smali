.class Landroid/system/suspend/internal/SuspendInfo$1;
.super Ljava/lang/Object;
.source "SuspendInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/SuspendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/suspend/internal/SuspendInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/SuspendInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 39
    new-instance v0, Landroid/system/suspend/internal/SuspendInfo;

    invoke-direct {v0}, Landroid/system/suspend/internal/SuspendInfo;-><init>()V

    .line 40
    .local v0, "_aidl_out":Landroid/system/suspend/internal/SuspendInfo;
    invoke-virtual {v0, p1}, Landroid/system/suspend/internal/SuspendInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/SuspendInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/SuspendInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/suspend/internal/SuspendInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 45
    new-array v0, p1, [Landroid/system/suspend/internal/SuspendInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/SuspendInfo$1;->newArray(I)[Landroid/system/suspend/internal/SuspendInfo;

    move-result-object p1

    return-object p1
.end method
