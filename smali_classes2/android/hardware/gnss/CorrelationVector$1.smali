.class Landroid/hardware/gnss/CorrelationVector$1;
.super Ljava/lang/Object;
.source "CorrelationVector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/CorrelationVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/CorrelationVector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/CorrelationVector;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/hardware/gnss/CorrelationVector;

    invoke-direct {v0}, Landroid/hardware/gnss/CorrelationVector;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/hardware/gnss/CorrelationVector;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/CorrelationVector;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/CorrelationVector$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/CorrelationVector;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/CorrelationVector;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/hardware/gnss/CorrelationVector;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/CorrelationVector$1;->newArray(I)[Landroid/hardware/gnss/CorrelationVector;

    move-result-object p1

    return-object p1
.end method
