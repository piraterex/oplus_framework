.class Landroid/hardware/HardwareBuffer$1;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/HardwareBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/HardwareBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 416
    invoke-static {p1}, Landroid/hardware/HardwareBuffer;->-$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 417
    .local v0, "nativeObject":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 418
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1, v3}, Landroid/hardware/HardwareBuffer;-><init>(JLandroid/hardware/HardwareBuffer-IA;)V

    return-object v2

    .line 420
    :cond_0
    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/HardwareBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 424
    new-array v0, p1, [Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->newArray(I)[Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method
