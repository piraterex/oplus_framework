.class Landroid/util/SizeF$1;
.super Ljava/lang/Object;
.source "SizeF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/SizeF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/util/SizeF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/util/SizeF;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 195
    .local v0, "width":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 196
    .local v1, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/util/SizeF$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/SizeF;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/util/SizeF;
    .locals 1
    .param p1, "size"    # I

    .line 204
    new-array v0, p1, [Landroid/util/SizeF;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/util/SizeF$1;->newArray(I)[Landroid/util/SizeF;

    move-result-object p1

    return-object p1
.end method
