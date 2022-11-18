.class Landroid/media/soundtrigger/ModelParameterRange$1;
.super Ljava/lang/Object;
.source "ModelParameterRange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/ModelParameterRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/soundtrigger/ModelParameterRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 15
    new-instance v0, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {v0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    .line 16
    .local v0, "_aidl_out":Landroid/media/soundtrigger/ModelParameterRange;
    invoke-virtual {v0, p1}, Landroid/media/soundtrigger/ModelParameterRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger/ModelParameterRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/soundtrigger/ModelParameterRange;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 21
    new-array v0, p1, [Landroid/media/soundtrigger/ModelParameterRange;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/media/soundtrigger/ModelParameterRange$1;->newArray(I)[Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p1

    return-object p1
.end method
