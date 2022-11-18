.class Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 357
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 358
    .local v0, "c":Landroid/location/Criteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmHorizontalAccuracy(Landroid/location/Criteria;I)V

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmVerticalAccuracy(Landroid/location/Criteria;I)V

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmSpeedAccuracy(Landroid/location/Criteria;I)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmBearingAccuracy(Landroid/location/Criteria;I)V

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmPowerRequirement(Landroid/location/Criteria;I)V

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmAltitudeRequired(Landroid/location/Criteria;Z)V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmBearingRequired(Landroid/location/Criteria;Z)V

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmSpeedRequired(Landroid/location/Criteria;Z)V

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v0, v2}, Landroid/location/Criteria;->-$$Nest$fputmCostAllowed(Landroid/location/Criteria;Z)V

    .line 367
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Criteria;
    .locals 1
    .param p1, "size"    # I

    .line 372
    new-array v0, p1, [Landroid/location/Criteria;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    move-result-object p1

    return-object p1
.end method
