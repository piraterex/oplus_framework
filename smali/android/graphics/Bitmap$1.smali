.class Landroid/graphics/Bitmap$1;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 2131
    invoke-static {p1}, Landroid/graphics/Bitmap;->-$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2132
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2135
    return-object v0

    .line 2133
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to unparcel Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2123
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "size"    # I

    .line 2138
    new-array v0, p1, [Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2123
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->newArray(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
