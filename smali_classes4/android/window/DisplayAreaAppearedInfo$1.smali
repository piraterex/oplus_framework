.class Landroid/window/DisplayAreaAppearedInfo$1;
.super Ljava/lang/Object;
.source "DisplayAreaAppearedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DisplayAreaAppearedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/DisplayAreaAppearedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 44
    sget-object v0, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/DisplayAreaInfo;

    .line 45
    .local v0, "displayAreaInfo":Landroid/window/DisplayAreaInfo;
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 46
    .local v1, "leash":Landroid/view/SurfaceControl;
    new-instance v2, Landroid/window/DisplayAreaAppearedInfo;

    invoke-direct {v2, v0, v1}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaAppearedInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/DisplayAreaAppearedInfo;
    .locals 1
    .param p1, "size"    # I

    .line 51
    new-array v0, p1, [Landroid/window/DisplayAreaAppearedInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaAppearedInfo$1;->newArray(I)[Landroid/window/DisplayAreaAppearedInfo;

    move-result-object p1

    return-object p1
.end method
