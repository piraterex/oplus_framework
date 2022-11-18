.class Landroid/view/DisplayAddress$Physical$1;
.super Ljava/lang/Object;
.source "DisplayAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress$Physical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DisplayAddress$Physical;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Physical;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 157
    new-instance v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayAddress$Physical;-><init>(JLandroid/view/DisplayAddress$Physical-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Physical$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Physical;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DisplayAddress$Physical;
    .locals 1
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/view/DisplayAddress$Physical;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Physical$1;->newArray(I)[Landroid/view/DisplayAddress$Physical;

    move-result-object p1

    return-object p1
.end method
