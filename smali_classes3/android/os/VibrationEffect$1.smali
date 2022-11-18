.class Landroid/os/VibrationEffect$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1470
    const-class v0, Landroid/os/IVibrationEffectExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IVibrationEffectExt;

    .line 1471
    .local v0, "vibrationEffectExt":Landroid/os/IVibrationEffectExt;
    invoke-interface {v0, p1}, Landroid/os/IVibrationEffectExt;->createExtendedEffect(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 1472
    .local v1, "customizeVibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v1, :cond_0

    .line 1473
    return-object v1

    .line 1476
    :cond_0
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v2, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/Parcel;)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1465
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "size"    # I

    .line 1480
    new-array v0, p1, [Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1465
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->newArray(I)[Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
