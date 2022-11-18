.class Landroid/os/CombinedVibration$1;
.super Ljava/lang/Object;
.source "CombinedVibration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CombinedVibration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 719
    .local v0, "token":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 720
    new-instance v1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Mono;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 721
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 722
    new-instance v1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Stereo;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 723
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 724
    new-instance v1, Landroid/os/CombinedVibration$Sequential;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Sequential;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 726
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected combined vibration event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 715
    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/CombinedVibration;
    .locals 1
    .param p1, "size"    # I

    .line 733
    new-array v0, p1, [Landroid/os/CombinedVibration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 715
    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$1;->newArray(I)[Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method
